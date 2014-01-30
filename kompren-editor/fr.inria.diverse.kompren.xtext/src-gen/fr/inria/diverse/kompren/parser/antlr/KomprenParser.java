/*
* generated by Xtext
*/
package fr.inria.diverse.kompren.parser.antlr;

import com.google.inject.Inject;

import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import fr.inria.diverse.kompren.services.KomprenGrammarAccess;

public class KomprenParser extends org.eclipse.xtext.parser.antlr.AbstractAntlrParser {
	
	@Inject
	private KomprenGrammarAccess grammarAccess;
	
	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	
	@Override
	protected fr.inria.diverse.kompren.parser.antlr.internal.InternalKomprenParser createParser(XtextTokenStream stream) {
		return new fr.inria.diverse.kompren.parser.antlr.internal.InternalKomprenParser(stream, getGrammarAccess());
	}
	
	@Override 
	protected String getDefaultRuleName() {
		return "Slicer";
	}
	
	public KomprenGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(KomprenGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
}
