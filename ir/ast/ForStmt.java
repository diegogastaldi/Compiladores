package ir.ast;

import ir.ASTVisitor;

public class ForStmt extends CycleStmt {
	private Expression assignExpr;
	private Expression condition;
	private VarLocation loc;
		
	public ForStmt(VarLocation id, Expression cond, Expression ass, Block block) {
		this.condition = cond;
		this.block = block;
		this.assignExpr = ass;
		this.loc = id;
	}
	 
	public ForStmt(VarLocation id, Expression cond, Expression ass, Block block, int line, int col) {
		this.condition = cond;
		this.block = block;
		this.assignExpr = ass;
		this.loc = id;
	    lineNumber = line;
	    colNumber = col;
	} 
	
	public void setLocation(VarLocation id) {
		this.loc = id;
	}
	
	public VarLocation getLocation() {
		return loc;
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
		String forS = "for " + loc.getId() + "=" + assignExpr + ", " + condition + '\n' + block.toString();
		
		return forS;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
} 
