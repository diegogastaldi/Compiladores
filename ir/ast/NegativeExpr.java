package ir.ast;

import ir.ASTVisitor;

public class NegativeExpr extends Expression {
	private Expression expr;
	
	public NegativeExpr(Expression expr, Type type){
        this.expr = expr;
        this.type = type;
	}

	@Override
	public String toString() {
		return "-" + expr;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
} 
