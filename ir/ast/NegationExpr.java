package ir.ast;

import ir.ASTVisitor;

public class NegationExpr extends Expression {
	private Expression expr;
	
	public NegationExpr(Expression expr, Type type){
        this.expr = expr;
        this.type = type;
	}

	@Override
	public String toString() {
		return "!" + expr;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
} 
