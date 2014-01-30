/*
* generated by Xtext
*/
package fr.inria.diverse.kompren.services;

import com.google.inject.Singleton;
import com.google.inject.Inject;

import java.util.List;

import org.eclipse.xtext.*;
import org.eclipse.xtext.service.GrammarProvider;
import org.eclipse.xtext.service.AbstractElementFinder.*;

import org.eclipse.xtext.common.services.TerminalsGrammarAccess;

@Singleton
public class KomprenGrammarAccess extends AbstractGrammarElementFinder {
	
	
	public class SlicerElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Slicer");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cSlicerKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cActiveAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final Keyword cActiveActiveKeyword_1_0 = (Keyword)cActiveAssignment_1.eContents().get(0);
		private final Assignment cStrictAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final Keyword cStrictStrictKeyword_2_0 = (Keyword)cStrictAssignment_2.eContents().get(0);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameEStringParserRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cDomainKeyword_5 = (Keyword)cGroup.eContents().get(5);
		private final Keyword cColonKeyword_6 = (Keyword)cGroup.eContents().get(6);
		private final Assignment cUriMetamodelAssignment_7 = (Assignment)cGroup.eContents().get(7);
		private final RuleCall cUriMetamodelEStringParserRuleCall_7_0 = (RuleCall)cUriMetamodelAssignment_7.eContents().get(0);
		private final Keyword cInputKeyword_8 = (Keyword)cGroup.eContents().get(8);
		private final Keyword cColonKeyword_9 = (Keyword)cGroup.eContents().get(9);
		private final Assignment cInputClassesAssignment_10 = (Assignment)cGroup.eContents().get(10);
		private final CrossReference cInputClassesEClassCrossReference_10_0 = (CrossReference)cInputClassesAssignment_10.eContents().get(0);
		private final RuleCall cInputClassesEClassEStringParserRuleCall_10_0_1 = (RuleCall)cInputClassesEClassCrossReference_10_0.eContents().get(1);
		private final Group cGroup_11 = (Group)cGroup.eContents().get(11);
		private final Keyword cCommaKeyword_11_0 = (Keyword)cGroup_11.eContents().get(0);
		private final Assignment cInputClassesAssignment_11_1 = (Assignment)cGroup_11.eContents().get(1);
		private final CrossReference cInputClassesEClassCrossReference_11_1_0 = (CrossReference)cInputClassesAssignment_11_1.eContents().get(0);
		private final RuleCall cInputClassesEClassEStringParserRuleCall_11_1_0_1 = (RuleCall)cInputClassesEClassCrossReference_11_1_0.eContents().get(1);
		private final Group cGroup_12 = (Group)cGroup.eContents().get(12);
		private final Keyword cRadiusKeyword_12_0 = (Keyword)cGroup_12.eContents().get(0);
		private final Keyword cColonKeyword_12_1 = (Keyword)cGroup_12.eContents().get(1);
		private final Assignment cRadiusAssignment_12_2 = (Assignment)cGroup_12.eContents().get(2);
		private final RuleCall cRadiusRadiusParserRuleCall_12_2_0 = (RuleCall)cRadiusAssignment_12_2.eContents().get(0);
		private final Group cGroup_13 = (Group)cGroup.eContents().get(13);
		private final Keyword cConstraintKeyword_13_0 = (Keyword)cGroup_13.eContents().get(0);
		private final Keyword cColonKeyword_13_1 = (Keyword)cGroup_13.eContents().get(1);
		private final Assignment cConstraintsAssignment_13_2 = (Assignment)cGroup_13.eContents().get(2);
		private final RuleCall cConstraintsConstraintParserRuleCall_13_2_0 = (RuleCall)cConstraintsAssignment_13_2.eContents().get(0);
		private final Group cGroup_14 = (Group)cGroup.eContents().get(14);
		private final Keyword cSlicedClassKeyword_14_0 = (Keyword)cGroup_14.eContents().get(0);
		private final Keyword cColonKeyword_14_1 = (Keyword)cGroup_14.eContents().get(1);
		private final Assignment cSlicedElementsAssignment_14_2 = (Assignment)cGroup_14.eContents().get(2);
		private final RuleCall cSlicedElementsSlicedClassParserRuleCall_14_2_0 = (RuleCall)cSlicedElementsAssignment_14_2.eContents().get(0);
		private final Group cGroup_15 = (Group)cGroup.eContents().get(15);
		private final Keyword cSlicedPropertyKeyword_15_0 = (Keyword)cGroup_15.eContents().get(0);
		private final Keyword cColonKeyword_15_1 = (Keyword)cGroup_15.eContents().get(1);
		private final Assignment cSlicedElementsAssignment_15_2 = (Assignment)cGroup_15.eContents().get(2);
		private final RuleCall cSlicedElementsSlicedPropertyParserRuleCall_15_2_0 = (RuleCall)cSlicedElementsAssignment_15_2.eContents().get(0);
		private final Group cGroup_16 = (Group)cGroup.eContents().get(16);
		private final Keyword cOnStartKeyword_16_0 = (Keyword)cGroup_16.eContents().get(0);
		private final Keyword cLeftSquareBracketLeftSquareBracketKeyword_16_1 = (Keyword)cGroup_16.eContents().get(1);
		private final Assignment cOnStartAssignment_16_2 = (Assignment)cGroup_16.eContents().get(2);
		private final RuleCall cOnStartEStringParserRuleCall_16_2_0 = (RuleCall)cOnStartAssignment_16_2.eContents().get(0);
		private final Keyword cRightSquareBracketRightSquareBracketKeyword_16_3 = (Keyword)cGroup_16.eContents().get(3);
		private final Group cGroup_17 = (Group)cGroup.eContents().get(17);
		private final Keyword cOnEndKeyword_17_0 = (Keyword)cGroup_17.eContents().get(0);
		private final Keyword cLeftSquareBracketLeftSquareBracketKeyword_17_1 = (Keyword)cGroup_17.eContents().get(1);
		private final Assignment cOnEndAssignment_17_2 = (Assignment)cGroup_17.eContents().get(2);
		private final RuleCall cOnEndEStringParserRuleCall_17_2_0 = (RuleCall)cOnEndAssignment_17_2.eContents().get(0);
		private final Keyword cRightSquareBracketRightSquareBracketKeyword_17_3 = (Keyword)cGroup_17.eContents().get(3);
		private final Group cGroup_18 = (Group)cGroup.eContents().get(18);
		private final Keyword cHelperKeyword_18_0 = (Keyword)cGroup_18.eContents().get(0);
		private final Keyword cLeftSquareBracketLeftSquareBracketKeyword_18_1 = (Keyword)cGroup_18.eContents().get(1);
		private final Assignment cHelperAssignment_18_2 = (Assignment)cGroup_18.eContents().get(2);
		private final RuleCall cHelperEStringParserRuleCall_18_2_0 = (RuleCall)cHelperAssignment_18_2.eContents().get(0);
		private final Keyword cRightSquareBracketRightSquareBracketKeyword_18_3 = (Keyword)cGroup_18.eContents().get(3);
		private final Keyword cRightCurlyBracketKeyword_19 = (Keyword)cGroup.eContents().get(19);
		
		//Slicer:
		//	"slicer" active?="active"? strict?="strict"? name=EString "{" "domain" ":" uriMetamodel=EString "input" ":"
		//	inputClasses+=[ecore::EClass|EString] ("," inputClasses+=[ecore::EClass|EString])* ("radius" ":" radius=Radius)?
		//	("constraint" ":" constraints+=Constraint)* ("slicedClass" ":" slicedElements+=SlicedClass)* ("slicedProperty" ":"
		//	slicedElements+=SlicedProperty)* ("onStart" "[[" onStart=EString "]]")? ("onEnd" "[[" onEnd=EString "]]")? ("helper"
		//	"[[" helper=EString "]]")? "}";
		public ParserRule getRule() { return rule; }

		//"slicer" active?="active"? strict?="strict"? name=EString "{" "domain" ":" uriMetamodel=EString "input" ":"
		//inputClasses+=[ecore::EClass|EString] ("," inputClasses+=[ecore::EClass|EString])* ("radius" ":" radius=Radius)?
		//("constraint" ":" constraints+=Constraint)* ("slicedClass" ":" slicedElements+=SlicedClass)* ("slicedProperty" ":"
		//slicedElements+=SlicedProperty)* ("onStart" "[[" onStart=EString "]]")? ("onEnd" "[[" onEnd=EString "]]")? ("helper"
		//"[[" helper=EString "]]")? "}"
		public Group getGroup() { return cGroup; }

		//"slicer"
		public Keyword getSlicerKeyword_0() { return cSlicerKeyword_0; }

		//active?="active"?
		public Assignment getActiveAssignment_1() { return cActiveAssignment_1; }

		//"active"
		public Keyword getActiveActiveKeyword_1_0() { return cActiveActiveKeyword_1_0; }

		//strict?="strict"?
		public Assignment getStrictAssignment_2() { return cStrictAssignment_2; }

		//"strict"
		public Keyword getStrictStrictKeyword_2_0() { return cStrictStrictKeyword_2_0; }

		//name=EString
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }

		//EString
		public RuleCall getNameEStringParserRuleCall_3_0() { return cNameEStringParserRuleCall_3_0; }

		//"{"
		public Keyword getLeftCurlyBracketKeyword_4() { return cLeftCurlyBracketKeyword_4; }

		//"domain"
		public Keyword getDomainKeyword_5() { return cDomainKeyword_5; }

		//":"
		public Keyword getColonKeyword_6() { return cColonKeyword_6; }

		//uriMetamodel=EString
		public Assignment getUriMetamodelAssignment_7() { return cUriMetamodelAssignment_7; }

		//EString
		public RuleCall getUriMetamodelEStringParserRuleCall_7_0() { return cUriMetamodelEStringParserRuleCall_7_0; }

		//"input"
		public Keyword getInputKeyword_8() { return cInputKeyword_8; }

		//":"
		public Keyword getColonKeyword_9() { return cColonKeyword_9; }

		//inputClasses+=[ecore::EClass|EString]
		public Assignment getInputClassesAssignment_10() { return cInputClassesAssignment_10; }

		//[ecore::EClass|EString]
		public CrossReference getInputClassesEClassCrossReference_10_0() { return cInputClassesEClassCrossReference_10_0; }

		//EString
		public RuleCall getInputClassesEClassEStringParserRuleCall_10_0_1() { return cInputClassesEClassEStringParserRuleCall_10_0_1; }

		//("," inputClasses+=[ecore::EClass|EString])*
		public Group getGroup_11() { return cGroup_11; }

		//","
		public Keyword getCommaKeyword_11_0() { return cCommaKeyword_11_0; }

		//inputClasses+=[ecore::EClass|EString]
		public Assignment getInputClassesAssignment_11_1() { return cInputClassesAssignment_11_1; }

		//[ecore::EClass|EString]
		public CrossReference getInputClassesEClassCrossReference_11_1_0() { return cInputClassesEClassCrossReference_11_1_0; }

		//EString
		public RuleCall getInputClassesEClassEStringParserRuleCall_11_1_0_1() { return cInputClassesEClassEStringParserRuleCall_11_1_0_1; }

		//("radius" ":" radius=Radius)?
		public Group getGroup_12() { return cGroup_12; }

		//"radius"
		public Keyword getRadiusKeyword_12_0() { return cRadiusKeyword_12_0; }

		//":"
		public Keyword getColonKeyword_12_1() { return cColonKeyword_12_1; }

		//radius=Radius
		public Assignment getRadiusAssignment_12_2() { return cRadiusAssignment_12_2; }

		//Radius
		public RuleCall getRadiusRadiusParserRuleCall_12_2_0() { return cRadiusRadiusParserRuleCall_12_2_0; }

		//("constraint" ":" constraints+=Constraint)*
		public Group getGroup_13() { return cGroup_13; }

		//"constraint"
		public Keyword getConstraintKeyword_13_0() { return cConstraintKeyword_13_0; }

		//":"
		public Keyword getColonKeyword_13_1() { return cColonKeyword_13_1; }

		//constraints+=Constraint
		public Assignment getConstraintsAssignment_13_2() { return cConstraintsAssignment_13_2; }

		//Constraint
		public RuleCall getConstraintsConstraintParserRuleCall_13_2_0() { return cConstraintsConstraintParserRuleCall_13_2_0; }

		//("slicedClass" ":" slicedElements+=SlicedClass)*
		public Group getGroup_14() { return cGroup_14; }

		//"slicedClass"
		public Keyword getSlicedClassKeyword_14_0() { return cSlicedClassKeyword_14_0; }

		//":"
		public Keyword getColonKeyword_14_1() { return cColonKeyword_14_1; }

		//slicedElements+=SlicedClass
		public Assignment getSlicedElementsAssignment_14_2() { return cSlicedElementsAssignment_14_2; }

		//SlicedClass
		public RuleCall getSlicedElementsSlicedClassParserRuleCall_14_2_0() { return cSlicedElementsSlicedClassParserRuleCall_14_2_0; }

		//("slicedProperty" ":" slicedElements+=SlicedProperty)*
		public Group getGroup_15() { return cGroup_15; }

		//"slicedProperty"
		public Keyword getSlicedPropertyKeyword_15_0() { return cSlicedPropertyKeyword_15_0; }

		//":"
		public Keyword getColonKeyword_15_1() { return cColonKeyword_15_1; }

		//slicedElements+=SlicedProperty
		public Assignment getSlicedElementsAssignment_15_2() { return cSlicedElementsAssignment_15_2; }

		//SlicedProperty
		public RuleCall getSlicedElementsSlicedPropertyParserRuleCall_15_2_0() { return cSlicedElementsSlicedPropertyParserRuleCall_15_2_0; }

		//("onStart" "[[" onStart=EString "]]")?
		public Group getGroup_16() { return cGroup_16; }

		//"onStart"
		public Keyword getOnStartKeyword_16_0() { return cOnStartKeyword_16_0; }

		//"[["
		public Keyword getLeftSquareBracketLeftSquareBracketKeyword_16_1() { return cLeftSquareBracketLeftSquareBracketKeyword_16_1; }

		//onStart=EString
		public Assignment getOnStartAssignment_16_2() { return cOnStartAssignment_16_2; }

		//EString
		public RuleCall getOnStartEStringParserRuleCall_16_2_0() { return cOnStartEStringParserRuleCall_16_2_0; }

		//"]]"
		public Keyword getRightSquareBracketRightSquareBracketKeyword_16_3() { return cRightSquareBracketRightSquareBracketKeyword_16_3; }

		//("onEnd" "[[" onEnd=EString "]]")?
		public Group getGroup_17() { return cGroup_17; }

		//"onEnd"
		public Keyword getOnEndKeyword_17_0() { return cOnEndKeyword_17_0; }

		//"[["
		public Keyword getLeftSquareBracketLeftSquareBracketKeyword_17_1() { return cLeftSquareBracketLeftSquareBracketKeyword_17_1; }

		//onEnd=EString
		public Assignment getOnEndAssignment_17_2() { return cOnEndAssignment_17_2; }

		//EString
		public RuleCall getOnEndEStringParserRuleCall_17_2_0() { return cOnEndEStringParserRuleCall_17_2_0; }

		//"]]"
		public Keyword getRightSquareBracketRightSquareBracketKeyword_17_3() { return cRightSquareBracketRightSquareBracketKeyword_17_3; }

		//("helper" "[[" helper=EString "]]")?
		public Group getGroup_18() { return cGroup_18; }

		//"helper"
		public Keyword getHelperKeyword_18_0() { return cHelperKeyword_18_0; }

		//"[["
		public Keyword getLeftSquareBracketLeftSquareBracketKeyword_18_1() { return cLeftSquareBracketLeftSquareBracketKeyword_18_1; }

		//helper=EString
		public Assignment getHelperAssignment_18_2() { return cHelperAssignment_18_2; }

		//EString
		public RuleCall getHelperEStringParserRuleCall_18_2_0() { return cHelperEStringParserRuleCall_18_2_0; }

		//"]]"
		public Keyword getRightSquareBracketRightSquareBracketKeyword_18_3() { return cRightSquareBracketRightSquareBracketKeyword_18_3; }

		//"}"
		public Keyword getRightCurlyBracketKeyword_19() { return cRightCurlyBracketKeyword_19; }
	}

	public class EStringElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "EString");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cSTRINGTerminalRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//EString returns ecore::EString:
		//	STRING | ID;
		public ParserRule getRule() { return rule; }

		//STRING | ID
		public Alternatives getAlternatives() { return cAlternatives; }

		//STRING
		public RuleCall getSTRINGTerminalRuleCall_0() { return cSTRINGTerminalRuleCall_0; }

		//ID
		public RuleCall getIDTerminalRuleCall_1() { return cIDTerminalRuleCall_1; }
	}

	public class EBooleanElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "EBoolean");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Keyword cTrueKeyword_0 = (Keyword)cAlternatives.eContents().get(0);
		private final Keyword cFalseKeyword_1 = (Keyword)cAlternatives.eContents().get(1);
		
		//EBoolean returns ecore::EBoolean:
		//	"true" | "false";
		public ParserRule getRule() { return rule; }

		//"true" | "false"
		public Alternatives getAlternatives() { return cAlternatives; }

		//"true"
		public Keyword getTrueKeyword_0() { return cTrueKeyword_0; }

		//"false"
		public Keyword getFalseKeyword_1() { return cFalseKeyword_1; }
	}

	public class ConstraintElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Constraint");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameEStringParserRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cLeftSquareBracketLeftSquareBracketKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cExpressionAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cExpressionEStringParserRuleCall_2_0 = (RuleCall)cExpressionAssignment_2.eContents().get(0);
		private final Keyword cRightSquareBracketRightSquareBracketKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Constraint:
		//	name=EString "[[" expression=EString "]]";
		public ParserRule getRule() { return rule; }

		//name=EString "[[" expression=EString "]]"
		public Group getGroup() { return cGroup; }

		//name=EString
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }

		//EString
		public RuleCall getNameEStringParserRuleCall_0_0() { return cNameEStringParserRuleCall_0_0; }

		//"[["
		public Keyword getLeftSquareBracketLeftSquareBracketKeyword_1() { return cLeftSquareBracketLeftSquareBracketKeyword_1; }

		//expression=EString
		public Assignment getExpressionAssignment_2() { return cExpressionAssignment_2; }

		//EString
		public RuleCall getExpressionEStringParserRuleCall_2_0() { return cExpressionEStringParserRuleCall_2_0; }

		//"]]"
		public Keyword getRightSquareBracketRightSquareBracketKeyword_3() { return cRightSquareBracketRightSquareBracketKeyword_3; }
	}

	public class RadiusElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Radius");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cRadiusAction_0 = (Action)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Assignment cFocusedClassesAssignment_1_0 = (Assignment)cGroup_1.eContents().get(0);
		private final CrossReference cFocusedClassesSlicedClassCrossReference_1_0_0 = (CrossReference)cFocusedClassesAssignment_1_0.eContents().get(0);
		private final RuleCall cFocusedClassesSlicedClassEStringParserRuleCall_1_0_0_1 = (RuleCall)cFocusedClassesSlicedClassCrossReference_1_0_0.eContents().get(1);
		private final Group cGroup_1_1 = (Group)cGroup_1.eContents().get(1);
		private final Keyword cCommaKeyword_1_1_0 = (Keyword)cGroup_1_1.eContents().get(0);
		private final Assignment cFocusedClassesAssignment_1_1_1 = (Assignment)cGroup_1_1.eContents().get(1);
		private final CrossReference cFocusedClassesSlicedClassCrossReference_1_1_1_0 = (CrossReference)cFocusedClassesAssignment_1_1_1.eContents().get(0);
		private final RuleCall cFocusedClassesSlicedClassEStringParserRuleCall_1_1_1_0_1 = (RuleCall)cFocusedClassesSlicedClassCrossReference_1_1_1_0.eContents().get(1);
		
		//Radius:
		//	{Radius} (focusedClasses+=[SlicedClass|EString] ("," focusedClasses+=[SlicedClass|EString])*)?;
		public ParserRule getRule() { return rule; }

		//{Radius} (focusedClasses+=[SlicedClass|EString] ("," focusedClasses+=[SlicedClass|EString])*)?
		public Group getGroup() { return cGroup; }

		//{Radius}
		public Action getRadiusAction_0() { return cRadiusAction_0; }

		//(focusedClasses+=[SlicedClass|EString] ("," focusedClasses+=[SlicedClass|EString])*)?
		public Group getGroup_1() { return cGroup_1; }

		//focusedClasses+=[SlicedClass|EString]
		public Assignment getFocusedClassesAssignment_1_0() { return cFocusedClassesAssignment_1_0; }

		//[SlicedClass|EString]
		public CrossReference getFocusedClassesSlicedClassCrossReference_1_0_0() { return cFocusedClassesSlicedClassCrossReference_1_0_0; }

		//EString
		public RuleCall getFocusedClassesSlicedClassEStringParserRuleCall_1_0_0_1() { return cFocusedClassesSlicedClassEStringParserRuleCall_1_0_0_1; }

		//("," focusedClasses+=[SlicedClass|EString])*
		public Group getGroup_1_1() { return cGroup_1_1; }

		//","
		public Keyword getCommaKeyword_1_1_0() { return cCommaKeyword_1_1_0; }

		//focusedClasses+=[SlicedClass|EString]
		public Assignment getFocusedClassesAssignment_1_1_1() { return cFocusedClassesAssignment_1_1_1; }

		//[SlicedClass|EString]
		public CrossReference getFocusedClassesSlicedClassCrossReference_1_1_1_0() { return cFocusedClassesSlicedClassCrossReference_1_1_1_0; }

		//EString
		public RuleCall getFocusedClassesSlicedClassEStringParserRuleCall_1_1_1_0_1() { return cFocusedClassesSlicedClassEStringParserRuleCall_1_1_1_0_1; }
	}

	public class SlicedClassElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "SlicedClass");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cDomainAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cDomainEClassCrossReference_0_0 = (CrossReference)cDomainAssignment_0.eContents().get(0);
		private final RuleCall cDomainEClassEStringParserRuleCall_0_0_1 = (RuleCall)cDomainEClassCrossReference_0_0.eContents().get(1);
		private final Assignment cIsOptionAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final Keyword cIsOptionOptionKeyword_1_0 = (Keyword)cIsOptionAssignment_1.eContents().get(0);
		private final Assignment cCtxAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cCtxVarDeclParserRuleCall_2_0 = (RuleCall)cCtxAssignment_2.eContents().get(0);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cLeftSquareBracketLeftSquareBracketKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cExpressionAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final RuleCall cExpressionEStringParserRuleCall_3_1_0 = (RuleCall)cExpressionAssignment_3_1.eContents().get(0);
		private final Keyword cRightSquareBracketRightSquareBracketKeyword_3_2 = (Keyword)cGroup_3.eContents().get(2);
		
		//SlicedClass:
		//	domain=[ecore::EClass|EString] isOption?="option"? ctx=VarDecl? ("[[" expression=EString "]]")?;
		public ParserRule getRule() { return rule; }

		//domain=[ecore::EClass|EString] isOption?="option"? ctx=VarDecl? ("[[" expression=EString "]]")?
		public Group getGroup() { return cGroup; }

		//domain=[ecore::EClass|EString]
		public Assignment getDomainAssignment_0() { return cDomainAssignment_0; }

		//[ecore::EClass|EString]
		public CrossReference getDomainEClassCrossReference_0_0() { return cDomainEClassCrossReference_0_0; }

		//EString
		public RuleCall getDomainEClassEStringParserRuleCall_0_0_1() { return cDomainEClassEStringParserRuleCall_0_0_1; }

		//isOption?="option"?
		public Assignment getIsOptionAssignment_1() { return cIsOptionAssignment_1; }

		//"option"
		public Keyword getIsOptionOptionKeyword_1_0() { return cIsOptionOptionKeyword_1_0; }

		//ctx=VarDecl?
		public Assignment getCtxAssignment_2() { return cCtxAssignment_2; }

		//VarDecl
		public RuleCall getCtxVarDeclParserRuleCall_2_0() { return cCtxVarDeclParserRuleCall_2_0; }

		//("[[" expression=EString "]]")?
		public Group getGroup_3() { return cGroup_3; }

		//"[["
		public Keyword getLeftSquareBracketLeftSquareBracketKeyword_3_0() { return cLeftSquareBracketLeftSquareBracketKeyword_3_0; }

		//expression=EString
		public Assignment getExpressionAssignment_3_1() { return cExpressionAssignment_3_1; }

		//EString
		public RuleCall getExpressionEStringParserRuleCall_3_1_0() { return cExpressionEStringParserRuleCall_3_1_0; }

		//"]]"
		public Keyword getRightSquareBracketRightSquareBracketKeyword_3_2() { return cRightSquareBracketRightSquareBracketKeyword_3_2; }
	}

	public class VarDeclElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "VarDecl");
		private final Assignment cVarNameAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cVarNameEStringParserRuleCall_0 = (RuleCall)cVarNameAssignment.eContents().get(0);
		
		//VarDecl:
		//	varName=EString;
		public ParserRule getRule() { return rule; }

		//varName=EString
		public Assignment getVarNameAssignment() { return cVarNameAssignment; }

		//EString
		public RuleCall getVarNameEStringParserRuleCall_0() { return cVarNameEStringParserRuleCall_0; }
	}

	public class SlicedPropertyElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "SlicedProperty");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cDomainAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cDomainEStructuralFeatureCrossReference_0_0 = (CrossReference)cDomainAssignment_0.eContents().get(0);
		private final RuleCall cDomainEStructuralFeatureEStringParserRuleCall_0_0_1 = (RuleCall)cDomainEStructuralFeatureCrossReference_0_0.eContents().get(1);
		private final Assignment cIsOptionAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final Keyword cIsOptionOptionKeyword_1_0 = (Keyword)cIsOptionAssignment_1.eContents().get(0);
		private final Assignment cSrcAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cSrcVarDeclParserRuleCall_2_0 = (RuleCall)cSrcAssignment_2.eContents().get(0);
		private final Assignment cTgtAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cTgtVarDeclParserRuleCall_3_0 = (RuleCall)cTgtAssignment_3.eContents().get(0);
		private final Assignment cOppositeAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cOppositeOppositeCreationParserRuleCall_4_0 = (RuleCall)cOppositeAssignment_4.eContents().get(0);
		private final Group cGroup_5 = (Group)cGroup.eContents().get(5);
		private final Keyword cLeftSquareBracketLeftSquareBracketKeyword_5_0 = (Keyword)cGroup_5.eContents().get(0);
		private final Assignment cExpressionAssignment_5_1 = (Assignment)cGroup_5.eContents().get(1);
		private final RuleCall cExpressionEStringParserRuleCall_5_1_0 = (RuleCall)cExpressionAssignment_5_1.eContents().get(0);
		private final Keyword cRightSquareBracketRightSquareBracketKeyword_5_2 = (Keyword)cGroup_5.eContents().get(2);
		
		////		'type' type=[ecore::EClass]
		//SlicedProperty:
		//	domain=[ecore::EStructuralFeature|EString] isOption?="option"? src=VarDecl? tgt=VarDecl? opposite=OppositeCreation?
		//	("[[" expression=EString "]]")?;
		public ParserRule getRule() { return rule; }

		//domain=[ecore::EStructuralFeature|EString] isOption?="option"? src=VarDecl? tgt=VarDecl? opposite=OppositeCreation?
		//("[[" expression=EString "]]")?
		public Group getGroup() { return cGroup; }

		//domain=[ecore::EStructuralFeature|EString]
		public Assignment getDomainAssignment_0() { return cDomainAssignment_0; }

		//[ecore::EStructuralFeature|EString]
		public CrossReference getDomainEStructuralFeatureCrossReference_0_0() { return cDomainEStructuralFeatureCrossReference_0_0; }

		//EString
		public RuleCall getDomainEStructuralFeatureEStringParserRuleCall_0_0_1() { return cDomainEStructuralFeatureEStringParserRuleCall_0_0_1; }

		//isOption?="option"?
		public Assignment getIsOptionAssignment_1() { return cIsOptionAssignment_1; }

		//"option"
		public Keyword getIsOptionOptionKeyword_1_0() { return cIsOptionOptionKeyword_1_0; }

		//src=VarDecl?
		public Assignment getSrcAssignment_2() { return cSrcAssignment_2; }

		//VarDecl
		public RuleCall getSrcVarDeclParserRuleCall_2_0() { return cSrcVarDeclParserRuleCall_2_0; }

		//tgt=VarDecl?
		public Assignment getTgtAssignment_3() { return cTgtAssignment_3; }

		//VarDecl
		public RuleCall getTgtVarDeclParserRuleCall_3_0() { return cTgtVarDeclParserRuleCall_3_0; }

		//opposite=OppositeCreation?
		public Assignment getOppositeAssignment_4() { return cOppositeAssignment_4; }

		//OppositeCreation
		public RuleCall getOppositeOppositeCreationParserRuleCall_4_0() { return cOppositeOppositeCreationParserRuleCall_4_0; }

		//("[[" expression=EString "]]")?
		public Group getGroup_5() { return cGroup_5; }

		//"[["
		public Keyword getLeftSquareBracketLeftSquareBracketKeyword_5_0() { return cLeftSquareBracketLeftSquareBracketKeyword_5_0; }

		//expression=EString
		public Assignment getExpressionAssignment_5_1() { return cExpressionAssignment_5_1; }

		//EString
		public RuleCall getExpressionEStringParserRuleCall_5_1_0() { return cExpressionEStringParserRuleCall_5_1_0; }

		//"]]"
		public Keyword getRightSquareBracketRightSquareBracketKeyword_5_2() { return cRightSquareBracketRightSquareBracketKeyword_5_2; }
	}

	public class OppositeCreationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "OppositeCreation");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cOppositeCreationAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cOppositeKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Keyword cLeftParenthesisKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameEStringParserRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//OppositeCreation:
		//	{OppositeCreation} "opposite" "(" name=EString ")";
		public ParserRule getRule() { return rule; }

		//{OppositeCreation} "opposite" "(" name=EString ")"
		public Group getGroup() { return cGroup; }

		//{OppositeCreation}
		public Action getOppositeCreationAction_0() { return cOppositeCreationAction_0; }

		//"opposite"
		public Keyword getOppositeKeyword_1() { return cOppositeKeyword_1; }

		//"("
		public Keyword getLeftParenthesisKeyword_2() { return cLeftParenthesisKeyword_2; }

		//name=EString
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }

		//EString
		public RuleCall getNameEStringParserRuleCall_3_0() { return cNameEStringParserRuleCall_3_0; }

		//")"
		public Keyword getRightParenthesisKeyword_4() { return cRightParenthesisKeyword_4; }
	}
	
	
	private SlicerElements pSlicer;
	private EStringElements pEString;
	private EBooleanElements pEBoolean;
	private ConstraintElements pConstraint;
	private RadiusElements pRadius;
	private SlicedClassElements pSlicedClass;
	private VarDeclElements pVarDecl;
	private SlicedPropertyElements pSlicedProperty;
	private OppositeCreationElements pOppositeCreation;
	
	private final Grammar grammar;

	private TerminalsGrammarAccess gaTerminals;

	@Inject
	public KomprenGrammarAccess(GrammarProvider grammarProvider,
		TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("fr.inria.diverse.kompren.Kompren".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	
	public Grammar getGrammar() {
		return grammar;
	}
	

	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Slicer:
	//	"slicer" active?="active"? strict?="strict"? name=EString "{" "domain" ":" uriMetamodel=EString "input" ":"
	//	inputClasses+=[ecore::EClass|EString] ("," inputClasses+=[ecore::EClass|EString])* ("radius" ":" radius=Radius)?
	//	("constraint" ":" constraints+=Constraint)* ("slicedClass" ":" slicedElements+=SlicedClass)* ("slicedProperty" ":"
	//	slicedElements+=SlicedProperty)* ("onStart" "[[" onStart=EString "]]")? ("onEnd" "[[" onEnd=EString "]]")? ("helper"
	//	"[[" helper=EString "]]")? "}";
	public SlicerElements getSlicerAccess() {
		return (pSlicer != null) ? pSlicer : (pSlicer = new SlicerElements());
	}
	
	public ParserRule getSlicerRule() {
		return getSlicerAccess().getRule();
	}

	//EString returns ecore::EString:
	//	STRING | ID;
	public EStringElements getEStringAccess() {
		return (pEString != null) ? pEString : (pEString = new EStringElements());
	}
	
	public ParserRule getEStringRule() {
		return getEStringAccess().getRule();
	}

	//EBoolean returns ecore::EBoolean:
	//	"true" | "false";
	public EBooleanElements getEBooleanAccess() {
		return (pEBoolean != null) ? pEBoolean : (pEBoolean = new EBooleanElements());
	}
	
	public ParserRule getEBooleanRule() {
		return getEBooleanAccess().getRule();
	}

	//Constraint:
	//	name=EString "[[" expression=EString "]]";
	public ConstraintElements getConstraintAccess() {
		return (pConstraint != null) ? pConstraint : (pConstraint = new ConstraintElements());
	}
	
	public ParserRule getConstraintRule() {
		return getConstraintAccess().getRule();
	}

	//Radius:
	//	{Radius} (focusedClasses+=[SlicedClass|EString] ("," focusedClasses+=[SlicedClass|EString])*)?;
	public RadiusElements getRadiusAccess() {
		return (pRadius != null) ? pRadius : (pRadius = new RadiusElements());
	}
	
	public ParserRule getRadiusRule() {
		return getRadiusAccess().getRule();
	}

	//SlicedClass:
	//	domain=[ecore::EClass|EString] isOption?="option"? ctx=VarDecl? ("[[" expression=EString "]]")?;
	public SlicedClassElements getSlicedClassAccess() {
		return (pSlicedClass != null) ? pSlicedClass : (pSlicedClass = new SlicedClassElements());
	}
	
	public ParserRule getSlicedClassRule() {
		return getSlicedClassAccess().getRule();
	}

	//VarDecl:
	//	varName=EString;
	public VarDeclElements getVarDeclAccess() {
		return (pVarDecl != null) ? pVarDecl : (pVarDecl = new VarDeclElements());
	}
	
	public ParserRule getVarDeclRule() {
		return getVarDeclAccess().getRule();
	}

	////		'type' type=[ecore::EClass]
	//SlicedProperty:
	//	domain=[ecore::EStructuralFeature|EString] isOption?="option"? src=VarDecl? tgt=VarDecl? opposite=OppositeCreation?
	//	("[[" expression=EString "]]")?;
	public SlicedPropertyElements getSlicedPropertyAccess() {
		return (pSlicedProperty != null) ? pSlicedProperty : (pSlicedProperty = new SlicedPropertyElements());
	}
	
	public ParserRule getSlicedPropertyRule() {
		return getSlicedPropertyAccess().getRule();
	}

	//OppositeCreation:
	//	{OppositeCreation} "opposite" "(" name=EString ")";
	public OppositeCreationElements getOppositeCreationAccess() {
		return (pOppositeCreation != null) ? pOppositeCreation : (pOppositeCreation = new OppositeCreationElements());
	}
	
	public ParserRule getOppositeCreationRule() {
		return getOppositeCreationAccess().getRule();
	}

	//terminal ID:
	//	"^"? ("a".."z" | "A".."Z" | "_") ("a".."z" | "A".."Z" | "_" | "0".."9")*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	} 

	//terminal INT returns ecore::EInt:
	//	"0".."9"+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	} 

	//terminal STRING:
	//	"\"" ("\\" ("b" | "t" | "n" | "f" | "r" | "u" | "\"" | "\'" | "\\") | !("\\" | "\""))* "\"" | "\'" ("\\" ("b" | "t" |
	//	"n" | "f" | "r" | "u" | "\"" | "\'" | "\\") | !("\\" | "\'"))* "\'";
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	} 

	//terminal ML_COMMENT:
	//	"/ *"->"* /";
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	} 

	//terminal SL_COMMENT:
	//	"//" !("\n" | "\r")* ("\r"? "\n")?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	} 

	//terminal WS:
	//	(" " | "\t" | "\r" | "\n")+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	} 

	//terminal ANY_OTHER:
	//	.;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	} 
}
