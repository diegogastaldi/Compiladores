package ir.ast;

import ir.ASTVisitor;

public class RelExpr extends BinOpExpr {
    public RelExpr() {
        super();
        type = Type.BOOLEAN;
    }

	public RelExpr(Expression l, BinOpType op, Expression r){
	    super(l, r);
        super.operator = op;
        type = Type.BOOLEAN;
	}
	
	public RelExpr(BinOpType op, int line, int col){
        super.operator = op;
        lineNumber = line;
        colNumber = col;
        type = Type.BOOLEAN;
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
