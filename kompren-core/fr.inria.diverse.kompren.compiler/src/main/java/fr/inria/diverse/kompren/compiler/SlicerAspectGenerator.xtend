package fr.inria.diverse.kompren.compiler

import java.util.List
import kompren.Slicer
import org.eclipse.emf.ecore.EClass
import org.eclipse.emf.ecore.EPackage

import static extension fr.inria.diverse.kompren.compiler.EClassAspectQName.*
import static extension fr.inria.diverse.kompren.compiler.SlicerAspect.*

class SlicerAspectGenerator extends SlicerGenerator {
	val String aspectVisitor = "import fr.inria.triskell.k3.Aspect
import fr.inria.triskell.k3.OverrideAspectMethod

@Aspect(className=typeof(Object))
abstract class __SlicerAspect__ {
	var boolean visitedForRelations = false
	var boolean sliced = false

	def void visitToAddClasses(TYPE theSlicer){
		if(!_self.sliced) {
			_self.sliced = true
			_self._visitToAddClasses(theSlicer)
		}
	}
	
	protected def void _visitToAddClasses(TYPE theSlicer){}

	def void visitToAddRelations(TYPE theSlicer){
		if(!_self.visitedForRelations) {
			_self.visitedForRelations = true
			_self._visitToAddRelations(theSlicer)
		}
	}
	
	protected def void _visitToAddRelations(TYPE theSlicer){}
}\n"
	
	new(List<EPackage> mm, String name, Slicer slicer, String pkgName) {
		super(mm, name, slicer, pkgName)
	}

	override def generate() {
		generateClassVisitCode
		generateRelationVisitCode
		buf.append("package ").append(pkgName).append('\n')
		buf.append(getMMPackagesImports).append(aspectVisitor.replace("TYPE", slicerName)).append('\n')
		val mmClasses = metamodel.map[eAllContents.filter(EClass)]
		mmClasses.forEach[forEach[cl |
			val superName = if(cl.ESuperTypes.empty) "__SlicerAspect__" else cl.ESuperTypes.head.name+"Aspect"
			buf.append("@Aspect(className=typeof(").append(cl.name).append("))\n")
			buf.append("class ").append(cl.name).append("Aspect extends ").append(superName).append("{\n")
			buf.append("\t@OverrideAspectMethod\n")
			buf.append("\tdef void _visitToAddClasses(").append(slicerName).append(" theSlicer){\n")
			buf.append(cl.codeAction)
			buf.append("\t\t_self.super__visitToAddClasses(theSlicer)\n")
			buf.append("\t\t").append(cl.codeVisit).append('\n')
			buf.append("\t}\n\t@OverrideAspectMethod\n")
			buf.append("\tdef void _visitToAddRelations(").append(slicerName).append(" theSlicer){\n")
			buf.append("\t\t_self.super__visitToAddRelations(theSlicer)\n")
			buf.append("\t\t").append(cl.relationCode).append('\n')
			buf.append("\t}\n}\n\n")
		]]
	}


	protected def void generateRelationVisitCode() {
		slicer.slicedProps.forEach[sp | sp.domain.EContainingClass.generateVisitToAddRelations(sp, slicerName)]
	}

	
	protected def void generateClassVisitCode() {
		slicer.slicedProps.forEach[sp | sp.domain.EContainingClass.generateVisitToAddClasses(sp, slicerName)]
	}
}