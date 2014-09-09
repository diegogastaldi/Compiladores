package ir.ast;

import ir.ASTVisitor;

public class WhileStmt extends Statement {
	private Expression condition;
	private Block block;
	
	public WhileStmt(Expression cond, Block block) {
		this.condition = cond;
		this.block = block;
	}

	public Expression getCondition() {
		return condition;
	}

	public void setCondition(Expression condition) {
		this.condition = condition;
	}

	public Block getBlock() {
		return block;
	}

	public void setBlock(Block block) {
		this.block = block;
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
