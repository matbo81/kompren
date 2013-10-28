package lowerTypesSlicer

import ex.classModel.ClassModel
import ex.classModel.Clazz
import ex.classModel.impl.ClassModelFactoryImpl
import java.util.ArrayList
import java.util.List
import org.junit.Test
import static org.junit.Assert.*

class TestLowerTypesSlicer {
	@Test def testSlicer() {
		val List<Clazz> requiredClazzs = new  ArrayList
		val classModel = createClassModel(requiredClazzs)
		requiredClazzs.add(classModel.classes.last)
		val slicer = new LowerTypesSlicer(requiredClazzs, classModel)
		slicer.slice
		assertEquals("c3 c2 c1 c5 c4 c2 c1 c3 c2 c4 c3 c5 c4 ", slicer.buf.toString)
	}
	
	def static ClassModel createClassModel(List<Clazz> requiredClazzs) {
		val ClassModel result = ClassModelFactoryImpl.eINSTANCE.createClassModel
		val Clazz c1 = ClassModelFactoryImpl.eINSTANCE.createClazz
		val Clazz c2 = ClassModelFactoryImpl.eINSTANCE.createClazz
		val Clazz c3 = ClassModelFactoryImpl.eINSTANCE.createClazz
		val Clazz c4 = ClassModelFactoryImpl.eINSTANCE.createClazz
		val Clazz c5 = ClassModelFactoryImpl.eINSTANCE.createClazz
		
		c1.name = "c1"
		result.classes.add(c1)
		c2.name = "c2"
		result.classes.add(c2)
		c3.name = "c3"
		result.classes.add(c3)
		c4.name = "c4"
		result.classes.add(c4)
		c5.name = "c5"
		result.classes.add(c5)
		// c1 -> c2 -> c3 -> c4 -> c5
		c1.superClasses.add(c2)
		c2.superClasses.add(c3)
		c3.superClasses.add(c4)
		c4.superClasses.add(c5)
		requiredClazzs.add(c3)
		return result
	}
}
