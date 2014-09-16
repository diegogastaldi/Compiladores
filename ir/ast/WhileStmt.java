package ir.ast;

import ir.ASTVisitor;

public class WhileStmt extends CycleStmt {
	private Expression condition;
	
	public WhileStmt(Expression cond, Block block) {
		this.condition = cond;
		this.block = block;
	}

	public WhileStmt(Expression cond, Block block, int line, int col) {
		this.condition = cond;
		this.block = block;
		lineNumber = line;
		colNumber = col;
	}

	public Expression getCondition() {
		return condition;
	}

	public void setCondition(Expression condition) {
		this.condition = condition;
	}
	
	@Override
	public String toString() {
		String rtn = "while " + condition + '\n' + block.toString();
		
		return rtn;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
} 
