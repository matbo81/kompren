package fr.inria.diverse.kompren.compiler

import java.util.List
import org.eclipse.emf.ecore.EPackage
import kompren.Slicer
import static extension fr.inria.diverse.kompren.compiler.SlicerAspect.*

class SlicerMainGenerator extends SlicerGenerator {
	
	new(List<EPackage> mm, String name, Slicer slicer, String pkgName) {
		super(mm, name, slicer, pkgName)
	}
	
	override generate() {
		buf.append("package ").append(pkgName).append('\n')
		buf.append(getMMPackagesImports)
		buf.append("import java.util.List\n\n")
		buf.append("class ").append(slicerName).append("{\n")
		if(slicer.helper!=null && slicer.helper.length>0)
			buf.append(slicer.helper).append('\n')
		buf.append(generateAttributes).append('\n')
		buf.append(generateConstructor).append('\n')
		buf.append(generateLaunch).append('\n')
		buf.append(generateOnAdded).append('\n')
		buf.append(generateOnStart).append('\n')
		buf.append(generateOnEnd).append('\n')
		buf.append("}\n")
	}


	private def StringBuilder generateOnAdded() {
		val buf = new StringBuilder
		slicer.slicedClasses.forEach[cl |
			buf.append("\tdef void on").append(cl.domain.name).append("Sliced(").
				append(cl.ctx.type.name).append(' ').append(cl.ctx.varName).append("){\n")
			buf.append("\t\t").append(cl.expression).append('\n')
			buf.append("\t}\n")
		]
		slicer.slicedProps.filter[expression!=null && expression.length>0 && src!=null && tgt!=null].forEach[prop|
			buf.append("\tdef void on").append(prop.domain.name).append("Sliced(").
				append(prop.src.type.name).append(' ').append(prop.src.varName).append(", ").
				append(prop.tgt.type.name).append(' ').append(prop.tgt.varName).append("){\n")
			buf.append("\t\t").append(prop.expression).append('\n')
			buf.append("\t}\n")
		]
		return buf
	}


	private def StringBuilder generateOnStart() {
		val buf = new StringBuilder
		buf.append("\tprotected def void onStart(){\n")
		if(slicer.onStart!=null&& slicer.onStart.length>0)
			buf.append("\t\t").append(slicer.onStart).append('\n')
		buf.append("\t}\n")
		return buf
	}
	
	
	private def StringBuilder generateOnEnd() {
		val buf = new StringBuilder
		buf.append("\tprotected def void onEnd(){\n")
		if(slicer.onEnd!=null&& slicer.onEnd.length>0)
			buf.append("\t\t").append(slicer.onEnd).append('\n')
		buf.append("\t}\n")
		return buf
	}


	private def StringBuilder generateLaunch() {
		val buf = new StringBuilder
		buf.append("\tdef void slice(){\n")
		buf.append("\t\tonStart\n")
		slicer.inputClasses.forEach[cl | buf.append("\t\tinput").append(cl.name).append(".forEach[visitToAddClasses(this)]\n")]
		slicer.inputClasses.forEach[cl | buf.append("\t\tinput").append(cl.name).append(".forEach[visitToAddRelations(this)]\n")]
		buf.append("\t\tonEnd\n")
		buf.append("\t}\n")
		return buf
	}


	private def StringBuilder generateConstructor() {
		val buf = new StringBuilder
		buf.append("\tnew(")
		buf.append(slicer.inputClasses.map[cl | new StringBuilder().append("List<").append(cl.name).append("> input").append(cl.name)].join(","))
		buf.append("){\n")
		slicer.inputClasses.forEach[cl | buf.append("\t\tthis.input").append(cl.name).append(" = input").append(cl.name).append('\n')]
		buf.append("\t}\n")
		return buf
	}

	
	private def StringBuilder generateAttributes() {
		val buf = new StringBuilder
		slicer.inputClasses.forEach[cl | buf.append("\tval List<").append(cl.name).append("> input").append(cl.name).append('\n')]
		return buf
	}
}