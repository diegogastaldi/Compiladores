package ir.ast;

import ir.ASTVisitor;

public class IfStmt extends Statement {
	private Expression condition;
	private Block ifBlock;
	private Block elseBlock;
	
	public IfStmt(Expression cond, Block ifBl, int line, int col) {
		this.condition = cond;
		this.ifBlock = ifBl;
		this.elseBlock = null;
		lineNumber = line;
	    colNumber = col;
	}
	
	public IfStmt(Expression cond, Block ifBl, Block elseBl, int line, int col) {
		this.condition = cond;
		this.ifBlock = ifBl;
		this.elseBlock = elseBl;
		lineNumber = line;
	    colNumber = col;
	}

	public Expression getCondition() {
		return condition;
	}

	public void setCondition(Expression condition) {
		this.condition = condition;
	}

	public Block getIfBlock() {
		return ifBlock;
	}

	public void setIfBlock(Block ifBlock) {
		this.ifBlock = ifBlock;
	}

	public Block getElseBlock() {
		return elseBlock;
	}

	public void setElseBlock(Block elseBlock) {
		this.elseBlock = elseBlock;
	}
	
	@Override
	public String toString() {
		String rtn = "if " + condition + '\n' + ifBlock.toString();
		
		if (elseBlock != null) {
			rtn += "else \n" + elseBlock;
		}
		
		return rtn;
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
} 
