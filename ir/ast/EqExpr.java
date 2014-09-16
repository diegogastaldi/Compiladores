package ir.ast;

import ir.ASTVisitor;

public class EqExpr extends BinOpExpr {
    public EqExpr(){
        super();
    }

	public EqExpr(Expression l, BinOpType op, Expression r){
	    super(l, r);   	
        super.operator = op;
	}
	
	public EqExpr(BinOpType op, int line, int col){
        super.operator = op;
        lineNumber = line;
        colNumber = col;
	}
	
	@Override
	public String toString() {
		return lOperand + " " + operator + " " + rOperand;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
}
