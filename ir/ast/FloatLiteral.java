package ir.ast;

import ir.ASTVisitor;

public class FloatLiteral extends Literal {
	private Float value;
	
	/*
	 * Constructor for float literal that takes a string as an input
	 * @param: String float
	 */
	public FloatLiteral(Float val){
		value = val;
	}
	
	public FloatLiteral(Float val, int line, int col){
		value = val;
	    lineNumber = line;
	    colNumber = col;	
	}

	@Override
	public Type getType() {
		return Type.FLOAT;
	}

	public Float getValue() {
		return value;
	}

	public void setValue(float value) {
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
