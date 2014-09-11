package ir.ast;

import ir.ASTVisitor;

public abstract class AssignStmt extends Statement {
	protected Location location;
	protected Expression expr;

    public AssignStmt() {
    }

	public AssignStmt(Location loc, Expression e) {
		this.location = loc;
		this.expr = e;
	}
	
	public void setLocation(Location loc) {
		this.location = loc;
	}
	
	public Location getLocation() {
		return this.location;
	}
	
	public void setExpression(Expression e) {
		this.expr = e;
	}
	
	public Expression getExpression() {
		return this.expr;
	}
	
}
