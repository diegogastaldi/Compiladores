package ir.ast;

import ir.ASTVisitor;

public class ArithExpr extends BinOpExpr {
	public ArithExpr(){
	    super();
	}   

	public ArithExpr(Expression l, BinOpType op, Expression r){
		super(l, r);
        super.operator = op;
	}
	
	public ArithExpr(BinOpType op, int line, int col){
        super.operator = op;
        lineNumber = line;
        colNumber = col;
	}
	
	@Override
	public String toString() {
		return lOperand + " " + operator.toString() + " " + rOperand;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
}
