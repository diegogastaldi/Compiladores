package ir.ast;

import ir.ASTVisitor;

public class SemiColon extends Statement {
	private int blockId;
	
	public SemiColon() {

	}	
	
	public SemiColon(int bId, int line, int col) {
		blockId = bId;
		lineNumber = line;
		colNumber = col;
	}	
	
	public int getBlockId() {
		return blockId;
	}

	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}

	@Override
	public String toString() {
		return ";\n"; 
	}   

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
	
}
