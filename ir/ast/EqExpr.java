package ir.ast;

import ir.ASTVisitor;

public class EqExpr extends BinOpExpr {
    public EqExpr(){
        super();
    }

	public EqExpr(Expression l, BinOpType op, Expression r){
	    super(l, r);   	
		if ((op == BinOpType.CEQ) || (op == BinOpType.NEQ)) 
            super.operator = op;
        else {
            /*Si el operador es de tipo incorrecto, Carga el EQUALS*/
            super.operator = BinOpType.CEQ;
        }
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
