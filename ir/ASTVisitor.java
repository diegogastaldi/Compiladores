package ir;

import ir.ast.*;

// Abstract visitor
public interface ASTVisitor<T> {
// visit statements
	T visit(AssignStmt stmt);
	T visit(ReturnStmt stmt);
	T visit(IfStmt stmt);
	T visit(WhileStmt stmt);	
    T visit(Block stmt);
	
// visit expressions
	T visit(BinOpExpr expr);
	
// visit literals	
	T visit(IntLiteral lit);
	T visit(FloatLiteral lit);
	T visit(BoolLiteral lit);		
// visit locations	
	T visit(VarLocation loc);
}