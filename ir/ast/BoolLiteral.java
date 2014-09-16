package ir.ast;

import ir.ASTVisitor;

public class BoolLiteral extends Literal {
	private Boolean value;
	
	/*
	 * Constructor for bool literal that takes a string as an input
	 * @param: String boolean
	 */
	public BoolLiteral(Boolean val){
		value = val;
	}

	public BoolLiteral(Boolean val, int line, int col){
		value = val;
		lineNumber = line;
		colNumber = col;
	}

	@Override
	public Type getType() {
		return Type.BOOLEAN;
	}

	public Boolean getValue() {
		return value;
	}

	public void setValue(boolean value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return value.toString();
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}
} 
