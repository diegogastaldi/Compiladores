package ir.ast;

import ir.ASTVisitor;

public class ArrayLocation extends Location {
	private int blockId;
    private Expression exp;

	public ArrayLocation(String id, int block, Expression exp) {
		this.id = id;
		this.blockId = block;
		this.exp = exp;
	}
	
	public int getBlockId() {
		return blockId;
	}

	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}
	
	@Override
	public String toString() {
		return id + "[ " + exp + " ]";
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}

	public Expression getExp() {
	  return exp;
	}

	public void setExp(Expression exp) {
		this.exp = exp;
	}
}
