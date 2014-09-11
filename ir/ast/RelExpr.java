package ir.ast;

import ir.ASTVisitor;

public class RelExpr extends BinOpExpr {
	public RelExpr(Expression l, BinOpType op, Expression r){
	    super(l, r);
		if ((op == BinOpType.LE) || (op == BinOpType.LEQ) || (op == BinOpType.GE) || (op == BinOpType.GEQ)) 
            super.operator = op;
        else {
            /*Si el operador es de tipo incorrecto, Carga el GE*/
            super.operator = BinOpType.GE;
        }
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
