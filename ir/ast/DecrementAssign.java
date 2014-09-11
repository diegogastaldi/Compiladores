package ir.ast;

import ir.ASTVisitor;

public class DecrementAssign extends AssignStmt {
    public DecrementAssign() {
        super();
    }

	public DecrementAssign(Location loc, Expression e) {
        super(loc, e);
	}
	
	@Override
	public String toString() {
		return location + " " + AssignOpType.DECREMENT + " " + expr;
	}
	
	public AssignOpType getOperator() {
	    return AssignOpType.DECREMENT;
	}
	

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
}
