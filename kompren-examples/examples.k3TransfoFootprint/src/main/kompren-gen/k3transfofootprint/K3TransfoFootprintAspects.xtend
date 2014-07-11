package k3transfofootprint

import static extension k3transfofootprint.__SlicerAspect__.*
import static extension k3transfofootprint.orgeclipsextextcommontypesJvmTypeReferenceAspect.*
import static extension k3transfofootprint.orgeclipsextextcommontypesJvmIdentifiableElementAspect.*
import fr.inria.diverse.k3.al.annotationprocessor.Aspect
import fr.inria.diverse.k3.al.annotationprocessor.OverrideAspectMethod

@Aspect(className=typeof(java.lang.Object))
abstract class __SlicerAspect__ {
	var boolean visitedForRelations = false
	var boolean sliced = false
	protected var org.eclipse.emf.ecore.EObject clonedElt = null

	def void visitToAddClasses(K3TransfoFootprint theSlicer){
		if(!_self.sliced) {
			_self.sliced = true
			_self._visitToAddClasses(theSlicer)
		}
	}
	
	protected def void _visitToAddClasses(K3TransfoFootprint theSlicer){}

	def void visitToAddRelations(K3TransfoFootprint theSlicer){
		if(!_self.visitedForRelations) {
			_self.visitedForRelations = true
			_self._visitToAddRelations(theSlicer)
		}
	}
	
	protected def void _visitToAddRelations(K3TransfoFootprint theSlicer){}

	def void feedOpposites(){}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmIdentifiableElement), with=#[typeof(__SlicerAspect__)])
abstract class orgeclipsextextcommontypesJvmIdentifiableElementAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		theSlicer.onJvmIdentifiableElementSliced(_self)
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmType), with=#[typeof(orgeclipsextextcommontypesJvmIdentifiableElementAspect)])
abstract class orgeclipsextextcommontypesJvmTypeAspect extends orgeclipsextextcommontypesJvmIdentifiableElementAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmVoid), with=#[typeof(orgeclipsextextcommontypesJvmTypeAspect)])
class orgeclipsextextcommontypesJvmVoidAspect extends orgeclipsextextcommontypesJvmTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmComponentType), with=#[typeof(orgeclipsextextcommontypesJvmTypeAspect)])
abstract class orgeclipsextextcommontypesJvmComponentTypeAspect extends orgeclipsextextcommontypesJvmTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^arrayType?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^arrayType!=null){
		_self.^arrayType.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmPrimitiveType), with=#[typeof(orgeclipsextextcommontypesJvmComponentTypeAspect)])
class orgeclipsextextcommontypesJvmPrimitiveTypeAspect extends orgeclipsextextcommontypesJvmComponentTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmArrayType), with=#[typeof(orgeclipsextextcommontypesJvmComponentTypeAspect)])
class orgeclipsextextcommontypesJvmArrayTypeAspect extends orgeclipsextextcommontypesJvmComponentTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^componentType?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^componentType!=null){
		_self.^componentType.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmDeclaredType), with=#[typeof(orgeclipsextextcommontypesJvmMemberAspect), typeof(orgeclipsextextcommontypesJvmComponentTypeAspect)])
abstract class orgeclipsextextcommontypesJvmDeclaredTypeAspect extends orgeclipsextextcommontypesJvmMemberAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super_JvmMember__visitToAddClasses(theSlicer)
		_self.super_JvmComponentType__visitToAddClasses(theSlicer)
		_self.^superTypes.forEach[visitToAddClasses(theSlicer)]
		_self.^members.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super_JvmMember__visitToAddRelations(theSlicer)
		_self.super_JvmComponentType__visitToAddRelations(theSlicer)
		_self.^superTypes.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]
		_self.^members.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmTypeParameter), with=#[typeof(orgeclipsextextcommontypesJvmComponentTypeAspect), typeof(orgeclipsextextcommontypesJvmConstraintOwnerAspect)])
class orgeclipsextextcommontypesJvmTypeParameterAspect extends orgeclipsextextcommontypesJvmComponentTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super_JvmComponentType__visitToAddClasses(theSlicer)
		_self.super_JvmConstraintOwner__visitToAddClasses(theSlicer)
		_self.^declarator?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super_JvmComponentType__visitToAddRelations(theSlicer)
		_self.super_JvmConstraintOwner__visitToAddRelations(theSlicer)
		if(_self.^declarator!=null){
		_self.^declarator.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmTypeParameterDeclarator), with=#[typeof(__SlicerAspect__)])
abstract class orgeclipsextextcommontypesJvmTypeParameterDeclaratorAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^typeParameters.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^typeParameters.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmConstraintOwner), with=#[typeof(__SlicerAspect__)])
abstract class orgeclipsextextcommontypesJvmConstraintOwnerAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^constraints.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^constraints.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmTypeConstraint), with=#[typeof(__SlicerAspect__)])
abstract class orgeclipsextextcommontypesJvmTypeConstraintAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^typeReference?.visitToAddClasses(theSlicer)
		_self.^owner?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^typeReference!=null){
		_self.^typeReference.visitToAddRelations(theSlicer)
		}
		if(_self.^owner!=null){
		_self.^owner.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmUpperBound), with=#[typeof(orgeclipsextextcommontypesJvmTypeConstraintAspect)])
class orgeclipsextextcommontypesJvmUpperBoundAspect extends orgeclipsextextcommontypesJvmTypeConstraintAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmLowerBound), with=#[typeof(orgeclipsextextcommontypesJvmTypeConstraintAspect)])
class orgeclipsextextcommontypesJvmLowerBoundAspect extends orgeclipsextextcommontypesJvmTypeConstraintAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmAnnotationType), with=#[typeof(orgeclipsextextcommontypesJvmDeclaredTypeAspect)])
class orgeclipsextextcommontypesJvmAnnotationTypeAspect extends orgeclipsextextcommontypesJvmDeclaredTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmEnumerationType), with=#[typeof(orgeclipsextextcommontypesJvmDeclaredTypeAspect)])
class orgeclipsextextcommontypesJvmEnumerationTypeAspect extends orgeclipsextextcommontypesJvmDeclaredTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^literals.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^literals.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmEnumerationLiteral), with=#[typeof(orgeclipsextextcommontypesJvmFieldAspect)])
class orgeclipsextextcommontypesJvmEnumerationLiteralAspect extends orgeclipsextextcommontypesJvmFieldAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmGenericType), with=#[typeof(orgeclipsextextcommontypesJvmDeclaredTypeAspect), typeof(orgeclipsextextcommontypesJvmTypeParameterDeclaratorAspect)])
class orgeclipsextextcommontypesJvmGenericTypeAspect extends orgeclipsextextcommontypesJvmDeclaredTypeAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super_JvmDeclaredType__visitToAddClasses(theSlicer)
		_self.super_JvmTypeParameterDeclarator__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super_JvmDeclaredType__visitToAddRelations(theSlicer)
		_self.super_JvmTypeParameterDeclarator__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmTypeReference), with=#[typeof(__SlicerAspect__)])
abstract class orgeclipsextextcommontypesJvmTypeReferenceAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		theSlicer.onJvmTypeReferenceSliced(_self)
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmParameterizedTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect)])
class orgeclipsextextcommontypesJvmParameterizedTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^arguments.forEach[visitToAddClasses(theSlicer)]
		_self.^type?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^arguments.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmGenericArrayTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect)])
class orgeclipsextextcommontypesJvmGenericArrayTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^componentType?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^componentType!=null){
		_self.^componentType.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmWildcardTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect), typeof(orgeclipsextextcommontypesJvmConstraintOwnerAspect)])
class orgeclipsextextcommontypesJvmWildcardTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super_JvmTypeReference__visitToAddClasses(theSlicer)
		_self.super_JvmConstraintOwner__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super_JvmTypeReference__visitToAddRelations(theSlicer)
		_self.super_JvmConstraintOwner__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmAnyTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect)])
class orgeclipsextextcommontypesJvmAnyTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^type?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmMultiTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmCompoundTypeReferenceAspect)])
class orgeclipsextextcommontypesJvmMultiTypeReferenceAspect extends orgeclipsextextcommontypesJvmCompoundTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmMember), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationTargetAspect)])
abstract class orgeclipsextextcommontypesJvmMemberAspect extends orgeclipsextextcommontypesJvmAnnotationTargetAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^declaringType?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^declaringType!=null){
		_self.^declaringType.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmFeature), with=#[typeof(orgeclipsextextcommontypesJvmMemberAspect)])
abstract class orgeclipsextextcommontypesJvmFeatureAspect extends orgeclipsextextcommontypesJvmMemberAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmField), with=#[typeof(orgeclipsextextcommontypesJvmFeatureAspect)])
class orgeclipsextextcommontypesJvmFieldAspect extends orgeclipsextextcommontypesJvmFeatureAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^type?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmExecutable), with=#[typeof(orgeclipsextextcommontypesJvmFeatureAspect), typeof(orgeclipsextextcommontypesJvmTypeParameterDeclaratorAspect)])
abstract class orgeclipsextextcommontypesJvmExecutableAspect extends orgeclipsextextcommontypesJvmFeatureAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super_JvmFeature__visitToAddClasses(theSlicer)
		_self.super_JvmTypeParameterDeclarator__visitToAddClasses(theSlicer)
		_self.^parameters.forEach[visitToAddClasses(theSlicer)]
		_self.^exceptions.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super_JvmFeature__visitToAddRelations(theSlicer)
		_self.super_JvmTypeParameterDeclarator__visitToAddRelations(theSlicer)
		_self.^parameters.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]
		_self.^exceptions.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmConstructor), with=#[typeof(orgeclipsextextcommontypesJvmExecutableAspect)])
class orgeclipsextextcommontypesJvmConstructorAspect extends orgeclipsextextcommontypesJvmExecutableAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmOperation), with=#[typeof(orgeclipsextextcommontypesJvmExecutableAspect)])
class orgeclipsextextcommontypesJvmOperationAspect extends orgeclipsextextcommontypesJvmExecutableAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^returnType?.visitToAddClasses(theSlicer)
		_self.^defaultValue?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^returnType!=null){
		_self.^returnType.visitToAddRelations(theSlicer)
		}
		if(_self.^defaultValue!=null){
		_self.^defaultValue.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmFormalParameter), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationTargetAspect)])
class orgeclipsextextcommontypesJvmFormalParameterAspect extends orgeclipsextextcommontypesJvmAnnotationTargetAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^parameterType?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^parameterType!=null){
		_self.^parameterType.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmAnnotationTarget), with=#[typeof(orgeclipsextextcommontypesJvmIdentifiableElementAspect)])
abstract class orgeclipsextextcommontypesJvmAnnotationTargetAspect extends orgeclipsextextcommontypesJvmIdentifiableElementAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^annotations.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^annotations.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmAnnotationReference), with=#[typeof(__SlicerAspect__)])
class orgeclipsextextcommontypesJvmAnnotationReferenceAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^annotation?.visitToAddClasses(theSlicer)
		_self.^explicitValues.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^annotation!=null){
		_self.^annotation.visitToAddRelations(theSlicer)
		}
		_self.^explicitValues.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmAnnotationValue), with=#[typeof(__SlicerAspect__)])
abstract class orgeclipsextextcommontypesJvmAnnotationValueAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^operation?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^operation!=null){
		_self.^operation.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmIntAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmIntAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmBooleanAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmBooleanAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmByteAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmByteAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmShortAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmShortAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmLongAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmLongAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmDoubleAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmDoubleAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmFloatAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmFloatAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmCharAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmCharAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmStringAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmStringAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmTypeAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmTypeAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^values.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^values.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmAnnotationAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmAnnotationAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^values.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^values.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmEnumAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmEnumAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^values.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^values.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmDelegateTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect)])
class orgeclipsextextcommontypesJvmDelegateTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^delegate?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^delegate!=null){
		_self.^delegate.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmSpecializedTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect)])
abstract class orgeclipsextextcommontypesJvmSpecializedTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^equivalent?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^equivalent!=null){
		_self.^equivalent.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmSynonymTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmCompoundTypeReferenceAspect)])
class orgeclipsextextcommontypesJvmSynonymTypeReferenceAspect extends orgeclipsextextcommontypesJvmCompoundTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmUnknownTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect)])
class orgeclipsextextcommontypesJvmUnknownTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmCompoundTypeReference), with=#[typeof(orgeclipsextextcommontypesJvmTypeReferenceAspect)])
abstract class orgeclipsextextcommontypesJvmCompoundTypeReferenceAspect extends orgeclipsextextcommontypesJvmTypeReferenceAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^type?.visitToAddClasses(theSlicer)
		_self.^references.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}
		_self.^references.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.common.types.JvmCustomAnnotationValue), with=#[typeof(orgeclipsextextcommontypesJvmAnnotationValueAspect)])
class orgeclipsextextcommontypesJvmCustomAnnotationValueAspect extends orgeclipsextextcommontypesJvmAnnotationValueAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XExpression), with=#[typeof(__SlicerAspect__)])
abstract class orgeclipsextextxbaseXExpressionAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XIfExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXIfExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^if?.visitToAddClasses(theSlicer)
		_self.^then?.visitToAddClasses(theSlicer)
		_self.^else?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^if!=null){
		_self.^if.visitToAddRelations(theSlicer)
		}
		if(_self.^then!=null){
		_self.^then.visitToAddRelations(theSlicer)
		}
		if(_self.^else!=null){
		_self.^else.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XSwitchExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXSwitchExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^switch?.visitToAddClasses(theSlicer)
		_self.^cases.forEach[visitToAddClasses(theSlicer)]
		_self.^default?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^switch!=null){
		_self.^switch.visitToAddRelations(theSlicer)
		}
		_self.^cases.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]
		if(_self.^default!=null){
		_self.^default.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XCasePart), with=#[typeof(__SlicerAspect__)])
class orgeclipsextextxbaseXCasePartAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^case?.visitToAddClasses(theSlicer)
		_self.^then?.visitToAddClasses(theSlicer)
		_self.^typeGuard?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^case!=null){
		_self.^case.visitToAddRelations(theSlicer)
		}
		if(_self.^then!=null){
		_self.^then.visitToAddRelations(theSlicer)
		}
		if(_self.^typeGuard!=null){
		_self.^typeGuard.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XBlockExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXBlockExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^expressions.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^expressions.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XVariableDeclaration), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXVariableDeclarationAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^type?.visitToAddClasses(theSlicer)
		_self.^right?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}
		if(_self.^right!=null){
		_self.^right.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XAbstractFeatureCall), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
abstract class orgeclipsextextxbaseXAbstractFeatureCallAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^feature?.visitToAddClasses(theSlicer)
		_self.^typeArguments.forEach[visitToAddClasses(theSlicer)]
		_self.^implicitReceiver?.visitToAddClasses(theSlicer)
		_self.^implicitFirstArgument?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^feature!=null){
		_self.^feature.visitToAddRelations(theSlicer)
		}
		_self.^typeArguments.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]
		if(_self.^implicitReceiver!=null){
		_self.^implicitReceiver.visitToAddRelations(theSlicer)
		}
		if(_self.^implicitFirstArgument!=null){
		_self.^implicitFirstArgument.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XMemberFeatureCall), with=#[typeof(orgeclipsextextxbaseXAbstractFeatureCallAspect)])
class orgeclipsextextxbaseXMemberFeatureCallAspect extends orgeclipsextextxbaseXAbstractFeatureCallAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^memberCallTarget?.visitToAddClasses(theSlicer)
		_self.^memberCallArguments.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^memberCallTarget!=null){
		_self.^memberCallTarget.visitToAddRelations(theSlicer)
		}
		_self.^memberCallArguments.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XFeatureCall), with=#[typeof(orgeclipsextextxbaseXAbstractFeatureCallAspect)])
class orgeclipsextextxbaseXFeatureCallAspect extends orgeclipsextextxbaseXAbstractFeatureCallAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^featureCallArguments.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^featureCallArguments.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XConstructorCall), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXConstructorCallAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^constructor?.visitToAddClasses(theSlicer)
		_self.^arguments.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^constructor!=null){
		_self.^constructor.visitToAddRelations(theSlicer)
		}
		_self.^arguments.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XBooleanLiteral), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXBooleanLiteralAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XNullLiteral), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXNullLiteralAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XNumberLiteral), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXNumberLiteralAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XStringLiteral), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXStringLiteralAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XCollectionLiteral), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
abstract class orgeclipsextextxbaseXCollectionLiteralAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^elements.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^elements.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XListLiteral), with=#[typeof(orgeclipsextextxbaseXCollectionLiteralAspect)])
class orgeclipsextextxbaseXListLiteralAspect extends orgeclipsextextxbaseXCollectionLiteralAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XSetLiteral), with=#[typeof(orgeclipsextextxbaseXCollectionLiteralAspect)])
class orgeclipsextextxbaseXSetLiteralAspect extends orgeclipsextextxbaseXCollectionLiteralAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XClosure), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXClosureAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^declaredFormalParameters.forEach[visitToAddClasses(theSlicer)]
		_self.^expression?.visitToAddClasses(theSlicer)
		_self.^implicitParameter?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		_self.^declaredFormalParameters.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]
		if(_self.^expression!=null){
		_self.^expression.visitToAddRelations(theSlicer)
		}
		if(_self.^implicitParameter!=null){
		_self.^implicitParameter.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XCastedExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXCastedExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^type?.visitToAddClasses(theSlicer)
		_self.^target?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}
		if(_self.^target!=null){
		_self.^target.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XBinaryOperation), with=#[typeof(orgeclipsextextxbaseXAbstractFeatureCallAspect)])
class orgeclipsextextxbaseXBinaryOperationAspect extends orgeclipsextextxbaseXAbstractFeatureCallAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^leftOperand?.visitToAddClasses(theSlicer)
		_self.^rightOperand?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^leftOperand!=null){
		_self.^leftOperand.visitToAddRelations(theSlicer)
		}
		if(_self.^rightOperand!=null){
		_self.^rightOperand.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XUnaryOperation), with=#[typeof(orgeclipsextextxbaseXAbstractFeatureCallAspect)])
class orgeclipsextextxbaseXUnaryOperationAspect extends orgeclipsextextxbaseXAbstractFeatureCallAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^operand?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^operand!=null){
		_self.^operand.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XPostfixOperation), with=#[typeof(orgeclipsextextxbaseXAbstractFeatureCallAspect)])
class orgeclipsextextxbaseXPostfixOperationAspect extends orgeclipsextextxbaseXAbstractFeatureCallAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XForLoopExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXForLoopExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^forExpression?.visitToAddClasses(theSlicer)
		_self.^eachExpression?.visitToAddClasses(theSlicer)
		_self.^declaredParam?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^forExpression!=null){
		_self.^forExpression.visitToAddRelations(theSlicer)
		}
		if(_self.^eachExpression!=null){
		_self.^eachExpression.visitToAddRelations(theSlicer)
		}
		if(_self.^declaredParam!=null){
		_self.^declaredParam.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XBasicForLoopExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXBasicForLoopExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XAbstractWhileExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
abstract class orgeclipsextextxbaseXAbstractWhileExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^predicate?.visitToAddClasses(theSlicer)
		_self.^body?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^predicate!=null){
		_self.^predicate.visitToAddRelations(theSlicer)
		}
		if(_self.^body!=null){
		_self.^body.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XDoWhileExpression), with=#[typeof(orgeclipsextextxbaseXAbstractWhileExpressionAspect)])
class orgeclipsextextxbaseXDoWhileExpressionAspect extends orgeclipsextextxbaseXAbstractWhileExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XWhileExpression), with=#[typeof(orgeclipsextextxbaseXAbstractWhileExpressionAspect)])
class orgeclipsextextxbaseXWhileExpressionAspect extends orgeclipsextextxbaseXAbstractWhileExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XTypeLiteral), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXTypeLiteralAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^type?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XInstanceOfExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXInstanceOfExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^type?.visitToAddClasses(theSlicer)
		_self.^expression?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^type!=null){
		_self.^type.visitToAddRelations(theSlicer)
		}
		if(_self.^expression!=null){
		_self.^expression.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XThrowExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXThrowExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^expression?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^expression!=null){
		_self.^expression.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XTryCatchFinallyExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXTryCatchFinallyExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^expression?.visitToAddClasses(theSlicer)
		_self.^finallyExpression?.visitToAddClasses(theSlicer)
		_self.^catchClauses.forEach[visitToAddClasses(theSlicer)]

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^expression!=null){
		_self.^expression.visitToAddRelations(theSlicer)
		}
		if(_self.^finallyExpression!=null){
		_self.^finallyExpression.visitToAddRelations(theSlicer)
		}
		_self.^catchClauses.forEach[_elt| _elt.visitToAddRelations(theSlicer)		]

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XCatchClause), with=#[typeof(__SlicerAspect__)])
class orgeclipsextextxbaseXCatchClauseAspect extends __SlicerAspect__{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^expression?.visitToAddClasses(theSlicer)
		_self.^declaredParam?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^expression!=null){
		_self.^expression.visitToAddRelations(theSlicer)
		}
		if(_self.^declaredParam!=null){
		_self.^declaredParam.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XAssignment), with=#[typeof(orgeclipsextextxbaseXAbstractFeatureCallAspect)])
class orgeclipsextextxbaseXAssignmentAspect extends orgeclipsextextxbaseXAbstractFeatureCallAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^assignable?.visitToAddClasses(theSlicer)
		_self.^value?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^assignable!=null){
		_self.^assignable.visitToAddRelations(theSlicer)
		}
		if(_self.^value!=null){
		_self.^value.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XReturnExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXReturnExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)
		_self.^expression?.visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)
		if(_self.^expression!=null){
		_self.^expression.visitToAddRelations(theSlicer)
		}

	}
}

@Aspect(className=typeof(org.eclipse.xtext.xbase.XSynchronizedExpression), with=#[typeof(orgeclipsextextxbaseXExpressionAspect)])
class orgeclipsextextxbaseXSynchronizedExpressionAspect extends orgeclipsextextxbaseXExpressionAspect{
	@OverrideAspectMethod
	def void _visitToAddClasses(K3TransfoFootprint theSlicer){
		_self.super__visitToAddClasses(theSlicer)

	}
	@OverrideAspectMethod
	def void _visitToAddRelations(K3TransfoFootprint theSlicer){
		_self.super__visitToAddRelations(theSlicer)

	}
}

