package ir.ast;

import ir.ASTVisitor;

public class CondExpr extends BinOpExpr {
    public CondExpr(){
        super();
    }

   	public CondExpr(Expression l, BinOpType op, Expression r){
	    super(l, r);   	
		if ((op == BinOpType.AND) || (op == BinOpType.OR)) 
            super.operator = op;
        else {
            /*Si el operador es de tipo incorrecto, Carga el AND*/
            super.operator = BinOpType.AND;
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
