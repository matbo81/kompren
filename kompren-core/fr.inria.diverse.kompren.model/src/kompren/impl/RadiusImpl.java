/**
 */
package kompren.impl;

import java.util.Collection;
import kompren.KomprenPackage;
import kompren.Radius;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Radius</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link kompren.impl.RadiusImpl#getFocusedClasses <em>Focused Classes</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class RadiusImpl extends MinimalEObjectImpl.Container implements Radius {
	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public static final String copyright = "Inria/IRISA Diverse Team";
	/**
	 * The cached value of the '{@link #getFocusedClasses() <em>Focused Classes</em>}' reference list.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getFocusedClasses()
	 * @generated
	 * @ordered
	 */
	protected EList<EClass> focusedClasses;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected RadiusImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return KomprenPackage.Literals.RADIUS;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public EList<EClass> getFocusedClasses() {
		if (focusedClasses == null) {
			focusedClasses = new EObjectResolvingEList<EClass>(EClass.class, this, KomprenPackage.RADIUS__FOCUSED_CLASSES);
		}
		return focusedClasses;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case KomprenPackage.RADIUS__FOCUSED_CLASSES:
				return getFocusedClasses();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@SuppressWarnings("unchecked")
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case KomprenPackage.RADIUS__FOCUSED_CLASSES:
				getFocusedClasses().clear();
				getFocusedClasses().addAll((Collection<? extends EClass>)newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case KomprenPackage.RADIUS__FOCUSED_CLASSES:
				getFocusedClasses().clear();
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case KomprenPackage.RADIUS__FOCUSED_CLASSES:
				return focusedClasses != null && !focusedClasses.isEmpty();
		}
		return super.eIsSet(featureID);
	}

} //RadiusImpl
