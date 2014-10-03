package ir.ast;

import ir.ASTVisitor;

public class VarLocation extends Location {
	private int blockId;
	
	public VarLocation(String id, int block) {
		this.id = id;
		this.blockId = block;
	}
	
	public VarLocation(String id, Type t, int block, int line, int col, int os) {
		this.id = id;
		this.blockId = block;
		lineNumber = line;
		colNumber = col;
		type = t;
		offset = os;
	}
	
	public int getBlockId() {
		return blockId;
	}

	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}
	
	@Override
	public String toString() {
		return id;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
}
