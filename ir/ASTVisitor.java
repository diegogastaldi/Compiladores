package ir;

import ir.ast.*;

// Abstract visitor
public interface ASTVisitor<T> {
// visit statements
	T visit(AssignStmt stmt);
	T visit(IncrementAssign stmt);
	T visit(DecrementAssign stmt);
	T visit(SimpleAssign stmt);
	T visit(ReturnStmt stmt);
	T visit(IfStmt stmt);
	T visit(WhileStmt stmt);	
    T visit(Block stmt);
    T visit(ContinueStmt stmt);
    T visit(BreakStmt stmt);
    T visit(CycleStmt stmt);
    T visit(ForStmt stmt);
	T visit(MethodCallStmt stmt);
    T visit(SemiColon stmt);
    
// visit expressions
	T visit(BinOpExpr expr);
	T visit(NegativeExpr expr);
	T visit(NegationExpr expr);
	T visit(RelExpr expr);
	T visit(ArithExpr expr);
	T visit(CondExpr expr);	
	T visit(EqExpr expr);
	T visit(InParentExpr expr);
	T visit(MethodCallExpr expr);	
	T visit(InternInvkExpr expr);	
	T visit(ExternInvkExpr expr);
	
// visit literals	
	T visit(IntLiteral lit);
	T visit(FloatLiteral lit);
	T visit(BoolLiteral lit);		
	
// visit locations	
	T visit(VarLocation loc);
	T visit(ArrayLocation loc);
	
// arg invoc
	T visit(ArgInvocExpr arg);
    T visit(ArgInvocSL arg);
}
