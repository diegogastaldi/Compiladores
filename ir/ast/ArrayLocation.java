package ir.ast;

import ir.ASTVisitor;

public class ArrayLocation extends Location {
	private int blockId;
  private Expression exp;
	
	public ArrayLocation(String id, Type t, int block, Expression exp, int line, int col, int os, Boolean ig) {
		this.id = id;
		this.blockId = block;
		this.exp = exp;
		this.lineNumber = line;
		this.colNumber = col;
		this.type = t;
		/* Ubicacion en memoria respecto al regristro rbp de donde fue declarado */
		offset = os;
		isGlobal = ig;
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

	public Expression getExpression() {
	  return exp;
	}

	public void setExp(Expression exp) {
		this.exp = exp;
	}
}
