package ir.ast;

import ir.ASTVisitor;

public class NegationExpr extends Expression {
	private Expression expr;
	
	public NegationExpr(Expression expr){
        this.expr = expr;
        type = Type.BOOLEAN;
	}

	public NegationExpr(Expression expr, int line, int col){
        this.expr = expr;
        this.type = Type.BOOLEAN;
        lineNumber = line;
        colNumber = col;
	}
	
    public Expression getExpression() {
        return expr;
    }

    public void setExpression(Expression e) {
        expr = e;
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
