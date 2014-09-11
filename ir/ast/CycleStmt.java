package ir.ast;

import ir.ASTVisitor;

public abstract class CycleStmt extends Statement {
	protected Block block;
    
	public Block getBlock() {
		return block;
	}

	public void setBlock(Block block) {
		this.block = block;
	}
} 
