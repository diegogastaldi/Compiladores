package ir.ast;

import ir.ASTVisitor;

public class CondExpr extends BinOpExpr {
    public CondExpr(){
        super();
        type = Type.BOOLEAN;
    }

   	public CondExpr(Expression l, BinOpType op, Expression r){
	    super(l, r);   	
        super.operator = op;
        type = Type.BOOLEAN;
	}	
	
	public CondExpr(Expression l, BinOpType op, Expression r, int line, int col) {
   	    super(l, r);   	
        super.operator = op;
        lineNumber = line;
        colNumber = col;
        type = Type.BOOLEAN;
	}
	
	public CondExpr(BinOpType op, int line, int col) {
        super.operator = op;
        lineNumber = line;
        colNumber = col;
        type = Type.BOOLEAN;
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
