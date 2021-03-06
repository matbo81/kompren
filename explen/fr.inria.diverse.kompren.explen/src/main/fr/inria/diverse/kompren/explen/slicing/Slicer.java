package fr.inria.diverse.kompren.explen.slicing;

import java.util.List;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.kermeta.kompren.diagram.view.interfaces.IComponentView.Visibility;
import org.kermeta.kompren.diagram.view.interfaces.IEntityView;
import org.kermeta.kompren.diagram.view.interfaces.IModelView;
import org.kermeta.kompren.diagram.view.interfaces.IRelationView;

import explenslicer.ExplenSlicer;
import fr.inria.diverse.kompren.explen.view.ClassView;
import fr.inria.diverse.kompren.explen.view.InheritanceView;
import fr.inria.diverse.kompren.explen.view.ModelViewMapper;
import fr.inria.diverse.kompren.explen.view.RelationClassView;

public class Slicer extends ExplenSlicer {
	protected IModelView view;

	public Slicer(IModelView view, List<EClass> inputEClass, EObject metamodelRoot, boolean lowerType, boolean structFeat, boolean superType, 
			boolean operations, boolean card1, boolean composition){
		super(inputEClass, metamodelRoot, operations, structFeat, superType, lowerType, card1, composition);
		this.view = view;
	}

	@Override
	public void onEClassSliced(final EClass theVar) {
		super.onEClassSliced(theVar);
		if(theVar!=null && !theVar.eIsProxy()) {
			final ClassView cv = ModelViewMapper.getMapper().getClassView(theVar);
			if(cv!=null)
				ModelViewMapper.getMapper().getClassView(theVar).setVisibility(Visibility.STANDARD);
		}
	}


	@Override
	public void oneSuperTypesSliced(EClass clazz, EClass superClass) {
		super.oneSuperTypesSliced(clazz, superClass);
		InheritanceView iv = ModelViewMapper.getMapper().getInheritanceView(clazz, superClass);
		if(iv!=null)
			iv.setVisibility(Visibility.STANDARD);
	}

	
	@Override
	public void onlowerTypeSliced(EClass clazz, EClass lowerClass) {
		super.onlowerTypeSliced(clazz, lowerClass);
		InheritanceView iv = ModelViewMapper.getMapper().getInheritanceView(lowerClass, clazz);
		if(iv!=null)
			iv.setVisibility(Visibility.STANDARD);
	}
	

	@Override
	public void onEReferenceSliced(EReference ref) {
		super.onEReferenceSliced(ref);
		final RelationClassView rv = ModelViewMapper.getMapper().getRelationClassView(ref);
		if(rv!=null) {
			ModelViewMapper.getMapper().getRelationClassView(ref).setVisibility(Visibility.STANDARD);
		}
	}


	@Override
	protected void onStart() {
		super.onStart();
		
		for(IEntityView ent : view.getEntities())
			if(ent.getVisibility()==Visibility.STANDARD)
				ent.setVisibility(Visibility.HIDE_START);
		for(IRelationView rel : view.getRelations())
			if(rel.getVisibility()==Visibility.STANDARD)
				rel.setVisibility(Visibility.HIDE_START);
	}


	@Override
	protected void onEnd() {
		super.onEnd();
		reinit();
		for(IEntityView ent : view.getEntities())
			if(ent.getVisibility()==Visibility.HIDE_START)
				ent.setVisibility(Visibility.NONE);
		for(IRelationView rel : view.getRelations())
			if(rel.getVisibility()==Visibility.HIDE_START)
				rel.setVisibility(Visibility.NONE);
	
		view.updateLayout();
		view.update();
	}
}
