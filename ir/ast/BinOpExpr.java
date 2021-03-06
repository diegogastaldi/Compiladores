package ir.ast;

import ir.ASTVisitor;

public abstract class BinOpExpr extends Expression {
	protected BinOpType operator; //operator in the expr = expr operator expr
	protected Expression lOperand; //left expression
	protected Expression rOperand; //right expression

	public BinOpExpr(){
	
	}
	
	public BinOpExpr(Expression l, Expression r){
		lOperand = l;
		rOperand = r;
	}
	
	public BinOpExpr(Expression l, Expression r, int line, int col){
		lOperand = l;
		rOperand = r;
		lineNumber = line;
		colNumber = col;
	}

	public BinOpType getOperator() {
		return operator;
	}

	public void setOperator(BinOpType operator) {
		this.operator = operator;
	}

	public Expression getLeftOperand() {
		return lOperand;
	}

	public void setLeftOperand(Expression lOperand) {
		this.lOperand = lOperand;
	}

	public Expression getRightOperand() {
		return rOperand;
	}

	public void setRightOperand(Expression rOperand) {
		this.rOperand = rOperand;
	}
	
}
