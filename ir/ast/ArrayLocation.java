package ir.ast;

import ir.ASTVisitor;

public class ArrayLocation extends Location {
	private int blockId;
  private Expression exp;
  private int size;
	
	public ArrayLocation(String id, Type t, int block, Expression exp, int line, int col, int os, Boolean ig, int size) {
		this.id = id;
		this.blockId = block;
		this.exp = exp;
		this.lineNumber = line;
		this.colNumber = col;
		this.type = t;
		this.size = size;
		/* Ubicacion en memoria respecto al regristro rbp de donde fue declarado */
		offset = os;
		isGlobal = ig;

	}

	public int getSize() {
		return size;
	}	
	
	public Expression getExpression() {
	  return exp;
	}

	public void setExpression(Expression exp) {
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
}
