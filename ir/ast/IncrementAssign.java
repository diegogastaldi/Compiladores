package ir.ast;

import ir.ASTVisitor;

public class IncrementAssign extends AssignStmt {
    public IncrementAssign() {
        super();
    }

	public IncrementAssign(Location loc, Expression e) {
        super(loc, e);
	}
	
	public AssignOpType getOperator() {
	    return AssignOpType.INCREMENT;
	}
	
	@Override
	public String toString() {
		return location + " " + AssignOpType.INCREMENT + " " + expr.toString();
		
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
}
