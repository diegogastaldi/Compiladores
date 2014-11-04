package ir.ast;

import java.util.LinkedList;
import java.util.List;
import ir.ASTVisitor;

public class Block extends Statement {
	private List<Statement> statements;
	private int blockId;

	public Block() {
		statements = new LinkedList<Statement>();
	}
	
	public Block(int bId) {
		statements = new LinkedList<Statement>();
		blockId = bId;
	}
	
	public Block(int bId, List<Statement> s) {
		blockId = bId;
		statements = s;
	}
	
	public Block(int bId, List<Statement> s, int line, int col) {
		blockId = bId;
		statements = s;
		lineNumber = line;
		colNumber = col;
	}

	public void addStatement(Statement s) {
		this.statements.add(s);
	}
		
	public List<Statement> getStatements() {
		return this.statements;
	} 
		
	public int getBlockId() {
		return blockId;
	}

	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}

	@Override
	public String toString() {
		String rtn = "";
		
	    for (Statement s: statements) {
			rtn += s.toString() + '\n';
		}
		
		if (rtn.length() > 0) return rtn.substring(0, rtn.length() - 1); // remove last new line char
		
		return rtn; 
	}   

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
	
}
