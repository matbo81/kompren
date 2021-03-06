package fr.inria.diverse.kompren.explen.view;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl;
import org.kermeta.kompren.diagram.view.interfaces.IRelationView;
import org.kermeta.language.structure.ClassDefinition;
import org.kermeta.language.structure.ModelingUnit;
import org.kermeta.language.structure.Operation;
import org.kermeta.language.structure.Package;
import org.kermeta.language.structure.Property;
import org.kermeta.language.structure.Type;
import org.kermeta.language.structure.TypeDefinition;
import org.malai.presentation.Presentation;

import fr.inria.diverse.kompren.explen.model.Model;
import fr.inria.diverse.kompren.explen.model.ModelUtils;

public final class ModelViewMapper {
	private static ModelViewMapper instance;

	protected Presentation<Model, MetamodelView> presentation;

	protected Map<String, List<ClassDefinition>> cdAdded;

	protected Map<ClassDefinition, ClassView> classMappings;

	protected Map<ClassView, ClassDefinition> classMappingsInverted;

	protected Map<String, InheritanceView> addedInheritances;
	
	protected Map<String, RelationClassView> addedReferences;


	public static ModelViewMapper getMapper() {
		return instance;
	}


	public static void initMapper(final Presentation<Model, MetamodelView> presentation) {
		if(instance!=null)
			instance.flush();

		instance = new ModelViewMapper(presentation);
	}


	private ModelViewMapper(final Presentation<Model, MetamodelView> presentation) {
		super();

		this.presentation = presentation;
		cdAdded = new HashMap<>();
		classMappings = new IdentityHashMap<>();
		classMappingsInverted = new IdentityHashMap<>();
		addedInheritances = new HashMap<>();
		addedReferences = new HashMap<>();
	}


	private void flush() {
		cdAdded.clear();
		classMappings.clear();
		classMappingsInverted.clear();
		addedInheritances.clear();
		addedReferences.clear();
	}



	public ClassView getClassView(final ClassDefinition cd) {
		return classMappings.get(cd);
	}


	public List<ClassDefinition> getClassDefinitionAdded() {
		List<ClassDefinition> list = new ArrayList<>();

		for(List<ClassDefinition> l : cdAdded.values())
			list.addAll(l);

		return list;
	}
	
	
	public void removeRelationClassView(final Property prop) {
		addedReferences.remove(prop.getName()+prop.getOwningClass().getName());
	}
	
	
	public RelationClassView getRelationClassView(final Property prop) {
		if(addedReferences.get(prop.getName()+prop.getOwningClass().getName())==null) {
			System.out.println(addedReferences.keySet());
		}
		
		return addedReferences.get(prop.getName()+prop.getOwningClass().getName());
	}
	
	
	public InheritanceView getInheritanceView(ClassDefinition td1, ClassDefinition td2) {
		return addedInheritances.get(ModelUtils.INSTANCE.getQualifiedName(td1)+","+ModelUtils.INSTANCE.getQualifiedName(td2));
	}


	public ClassDefinition getClassDefinition(final ClassView cv) {
		return classMappingsInverted.get(cv);
	}


    @SuppressWarnings("unused")
	private void enforceInitPackage() {
    	org.OrgPackage p1 = org.OrgPackage.eINSTANCE;
    	org.kermeta.KmPackage p2 = org.kermeta.KmPackage.eINSTANCE;
    	org.kermeta.language.LanguagePackage p3 = org.kermeta.language.LanguagePackage.eINSTANCE;
    	org.kermeta.language.behavior.BehaviorPackage p4 = org.kermeta.language.behavior.BehaviorPackage.eINSTANCE;
    	org.kermeta.language.structure.StructurePackage p5 = org.kermeta.language.structure.StructurePackage.eINSTANCE;
    }


	private ModelingUnit loadKm(final String uriKmModel) {
    	enforceInitPackage();
    	ResourceSet resourceSet 	= new ResourceSetImpl();
		Resource.Factory.Registry f = resourceSet.getResourceFactoryRegistry();
		Map<String,Object> m 		= f.getExtensionToFactoryMap();
		m.put("km", new XMIResourceFactoryImpl());

		URI uri = URI.createURI(uriKmModel);
		Resource resource = resourceSet.getResource(uri, true);

		for(EObject o : resource.getContents())
			if(o instanceof ModelingUnit)
				return (ModelingUnit)o;
		return null;
	}


	private ModelingUnit loadEcore(final String uri) {
		try {
			if(uri.indexOf(".ecore")!=-1) {
				String path = uri.substring(0, uri.indexOf(".ecore")+".ecore".length()).replace("file:/", "");
				Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap().put("ecore", new XMIResourceFactoryImpl());
				ResourceSet rset = new ResourceSetImpl();
				Resource resource = rset.createResource(URI.createFileURI(path));
				resource.load(null);
//				EList<EObject> contents = resource.getContents();
//				EPackage root = (EPackage) (contents!=null && !contents.isEmpty() && contents.get(0) instanceof EPackage ?
//								contents.get(0) : null);
//
//				if(root!=null) {
//					Ecore2KMImpl ecore2km = new Ecore2KMImpl();
//					return ecore2km.convertPackage(root, null);
//				}
			}
		}catch(Exception ex) { ex.printStackTrace(); }
		return null;
	}


	public void build(final String uriMetamodel) {
		ModelingUnit mu = null;

		if(uriMetamodel.indexOf(".km")!=-1)
			mu = loadKm(uriMetamodel.substring(0, uriMetamodel.indexOf(".km")+".km".length()));
		else
			if(uriMetamodel.indexOf(".ecore")!=-1)
				mu = loadEcore(uriMetamodel);

		if(mu!=null) {
			final MetamodelView view = presentation.getConcretePresentation();

			flush();
			presentation.getAbstractPresentation().setUnit(mu);
			view.getEntities().clear();
			view.getRelations().clear();

			for(Package pkg : mu.getPackages())
				createPackageView(pkg, view);

			createRelationsView(view);

			view.updateLayout();
			view.update();
		}
	}


	public ClassView getClassView(final String qualifedName) {
		List<ClassDefinition> cds = cdAdded.get(qualifedName);

		if(cds!=null)
			for(ClassDefinition cd : cds)
				if(classMappings.get(cd)!=null)
					return classMappings.get(cd);

		return null;
	}


	private void createRelationsView(final MetamodelView view) {
		for(List<ClassDefinition> list : cdAdded.values())
			for(ClassDefinition cd : list) {
				String qname = ModelUtils.INSTANCE.getQualifiedName(cd);//FIXME only for eval
				if(!qname.startsWith("org.kermeta") && !qname.startsWith("kermeta") && !qname.startsWith("org.Dummy")) {//FIXME only for eval
					createInheritanceView(cd, ModelUtils.INSTANCE.getQualifiedName(cd), view);
					createReferences(cd, view);
				}
			}
	}



	private void createInheritanceView(final ClassDefinition cd, final String qname, final MetamodelView view) {
		String qname2;
		InheritanceView in;

		for(Type type : cd.getSuperType()) {
			qname2 = ModelUtils.INSTANCE.getTypeQualifiedName(type);
			if(qname.length()>0 && qname2.length()>2 && addedInheritances.get(qname+","+qname2)==null) {
				if(cdAdded.get(qname2)!=null && !cdAdded.get(qname2).isEmpty()) {//FIXME only for eval
					in = view.addInheritanceView(classMappings.get(cd), classMappings.get(cdAdded.get(qname2).get(0)));
					addedInheritances.put(qname+","+qname2, in);
				}
			}
		}
	}


	private void createPackageView(final Package pkg, final MetamodelView view) {
		String qname = ModelUtils.INSTANCE.getQualifiedName(pkg);//FIXME only for eval
		if(qname.startsWith("org.kermeta") || qname.startsWith("kermeta"))//FIXME only for eval
			return ;

		for(TypeDefinition td : pkg.getOwnedTypeDefinition())
			if(td instanceof ClassDefinition)
				createClassDefinition((ClassDefinition)td, view);

		for(Package pkg2 : pkg.getNestedPackage())
			createPackageView(pkg2, view);
	}


	private void createClassDefinition(final ClassDefinition cd, final MetamodelView view) {
		String qname = ModelUtils.INSTANCE.getQualifiedName(cd);//FIXME only for eval
		if(qname.startsWith("org.kermeta") || qname.startsWith("kermeta") || qname.startsWith("org.Dummy"))//FIXME only for eval
			return ;

		List<ClassDefinition> cdFirst = cdAdded.get(qname);
		ClassView cv = null;

		if(cdFirst==null) {
			List<ClassDefinition> cds = new ArrayList<>();
			cv = new ClassView(cd.getName(), qname, cd.getIsAbstract(), view);
			cds.add(cd);

			addAttributes(cd, cv);

			for(Operation op : cd.getOwnedOperation())
				cv.addOperation(op.getName(), ModelUtils.INSTANCE.getTypeName(op), op.getIsAbstract());

			view.addEntity(cv);
			cdAdded.put(ModelUtils.INSTANCE.getQualifiedName(cd), cds);
		}
		else {
			// Aspects.
			cv = classMappings.get(cdFirst.get(0));

			//FIXME: check that attributes and operations not added several times.
			addAttributes(cd, cv);

			for(Operation op : cd.getOwnedOperation())
				cv.addOperation(op.getName(), ModelUtils.INSTANCE.getTypeName(op), op.getIsAbstract());
		}

		classMappings.put(cd, cv);
		classMappingsInverted.put(cv, cd);
	}



	private void createReferences(final ClassDefinition cd, final MetamodelView mv) {
		Type type;
		boolean oppositeCompo;
		String oppositeCardString;
		String oppositeName;
		Property opp;
		ClassView cv = classMappings.get(cd);

		for(Property prop : cd.getOwnedAttribute()) {
			type = prop.getType();
			oppositeCompo = prop.getIsComposite();
			oppositeCardString = "";
			oppositeName = "";

			if(prop.getOpposite() instanceof Property) {
				opp = (Property) prop.getOpposite();
				oppositeName  = opp.getName();
				oppositeCompo = opp.getIsComposite();
				oppositeCardString = ModelUtils.INSTANCE.getCardinalityString(opp);
			}

			if(type instanceof org.kermeta.language.structure.Class &&
					!ModelUtils.INSTANCE.isKermetaPrimitiveType(((org.kermeta.language.structure.Class)type).getName())) {
//				System.out.println("!!!" + cd.getName() + " " + prop.getName());
				addReference((org.kermeta.language.structure.Class)type, oppositeCompo, prop, oppositeCardString, oppositeName, cv, mv);
			}
		}
//		System.out.println(cv.getRelations().size());
	}
	
	
	public void addReference(RelationClassView rcv, Property prop) {
		addedReferences.put(prop.getName()+prop.getOwningClass().getName(), rcv);
	}
	
	
	public void addReference(org.kermeta.language.structure.Class type, boolean oppositeCompo, Property prop, String oppositeCardString,
			String oppositeName, ClassView cv, MetamodelView mv) {
		ClassView cv2 = classMappings.get(type.getTypeDefinition());
		IRelationView relV = mv.addRelation(cv, cv2, prop.getIsComposite() || oppositeCompo, prop.getIsComposite(),
				prop.getName(), oppositeName, ModelUtils.INSTANCE.getCardinalityString(prop), oppositeCardString);
		if(relV==null)
			relV = mv.getOppositeRelation(cv, cv2, prop.getName(), oppositeName, ModelUtils.INSTANCE.getCardinalityString(prop));
		addedReferences.put(prop.getName()+prop.getOwningClass().getName(), (RelationClassView) relV);
	}


	private void addAttributes(final ClassDefinition cd, final ClassView cv) {
		Type type;

		for(Property prop : cd.getOwnedAttribute()) {
			type = prop.getType();
			
			if(type instanceof org.kermeta.language.structure.Class && 
					ModelUtils.INSTANCE.isKermetaPrimitiveType(((org.kermeta.language.structure.Class)prop.getType()).getTypeDefinition().getName()))
				cv.addAttribute(prop.getName(), 
						((org.kermeta.language.structure.Class)prop.getType()).getTypeDefinition().getName());
			else if(type instanceof org.kermeta.language.structure.DataType)
				cv.addAttribute(prop.getName(), ((org.kermeta.language.structure.DataType)prop.getType()).getName());
		}
	}
}
