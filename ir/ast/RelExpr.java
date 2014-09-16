package ir.ast;

import ir.ASTVisitor;

public class RelExpr extends BinOpExpr {
    public RelExpr() {
        super();
    }

	public RelExpr(Expression l, BinOpType op, Expression r){
	    super(l, r);
        super.operator = op;
	}
	
	public RelExpr(BinOpType op, int line, int col){
        super.operator = op;
        lineNumber = line;
        colNumber = col;
	}
	
	@Override
	public String toString() {
		return this.lOperand + " " + this.operator + " " + this.rOperand;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
	
}
