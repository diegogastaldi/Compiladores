package ir.ast;

import ir.ASTVisitor;

public class ForStmt extends CycleStmt {
	private Expression assignExpr;
	private Expression condition;
	protected String id;
		
	public ForStmt(Expression cond, Expression ass, Block block, String id) {
		this.condition = cond;
		this.block = block;
		this.assignExpr = ass;
		this.id = id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getId() {
		return id;
	}

	public Expression getCondition() {
		return condition;
	}

	public void setCondition(Expression condition) {
		this.condition = condition;
	}

	public Expression getAssignExpr() {
		return assignExpr;
	}

	public void setAssignExpr(Expression assign) {
		this.assignExpr = assign;
	}
	
	@Override
	public String toString() {
		String forS = "for " + id + "=" + assignExpr + ", " + condition + '\n' + block.toString();
		
		return forS;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
} 
