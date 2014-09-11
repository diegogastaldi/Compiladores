package ir.ast;

import ir.ASTVisitor;

public class SimpleAssign extends AssignStmt {

	public SimpleAssign(Location loc, Expression e) {
        super(loc, e);
	}
	
	@Override
	public String toString() {
		return location + " " + AssignOpType.ASSIGN + " " + expr;
	}
	
	public AssignOpType getOperator() {
	    return AssignOpType.ASSIGN;
	}
	

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
}