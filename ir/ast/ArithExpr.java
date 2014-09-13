package ir.ast;

import ir.ASTVisitor;

public class ArithExpr extends BinOpExpr {
	public ArithExpr(){
	    super();
	}   

	public ArithExpr(Expression l, BinOpType op, Expression r){
		super(l, r);
		if ((op == BinOpType.PLUS) || (op == BinOpType.MINUS) || (op == BinOpType.MULTIPLY) || (op == BinOpType.DIVIDE) || (op == BinOpType.MOD)) 
            super.operator = op;
        else {
            /*Si el operador es de tipo incorrecto, Carga el PLUS*/
            super.operator = BinOpType.PLUS;
        }
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
