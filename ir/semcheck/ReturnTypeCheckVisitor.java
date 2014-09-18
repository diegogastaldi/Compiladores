package ir.semcheck;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import error.Error;
import ir.ASTVisitor;

public class ReturnTypeCheckVisitor implements ASTVisitor<Boolean>{
  private List<Error> errors; 
  private Type type;
  //Constructor
  public ReturnTypeCheckVisitor(){
    errors = new LinkedList<Error>();
    type = Type.UNDEFINED;
  }
  public ReturnTypeCheckVisitor(Type type){
    errors = new LinkedList<Error>();
    this.type = type;
  }

  public Boolean visit(IncrementAssign stmt)   {
    return false;
  }
  
  public Boolean visit(DecrementAssign stmt)   {
    return false;
  }
  
  public Boolean visit(SimpleAssign stmt)   {
    return false;
  }
  
  public Boolean visit(ReturnStmt stmt){
    if (stmt.getExpression() != null) {
        Boolean expr = stmt.getExpression().accept(this);
        if (!expr) 
      	    addError(stmt,"El tipo retornado no coincide con la definicion del metodo");
        return expr;
    } else 
        return (type == Type.VOID);
  }
  
  public Boolean visit(IfStmt stmt)  {
    // Los bloques retornan true si en ellos hay una sentencia return con tipo correcto
    Boolean blockIf = stmt.getIfBlock().accept(this);
    if (stmt.getElseBlock() != null) {
       	Boolean blockElse = stmt.getElseBlock().accept(this);
        return (blockIf && blockElse);
    } else 
        return blockIf;
  }
  
  public Boolean visit(WhileStmt stmt)  {
    Boolean block = stmt.getBlock().accept(this);

  	return block;
  }
  	
  public Boolean visit(Block stmt){
    Boolean block = false;
    for (Statement s : stmt.getStatements()) {
        block = block || s.accept(this);
    }
  	return block;
  }
  
  public Boolean visit(ContinueStmt stmt){
  	return false;
  }
  
  public Boolean visit(BreakStmt stmt){
  	return false;
  }
    
  public Boolean visit(ForStmt stmt)  {
    Boolean block = stmt.getBlock().accept(this);
    
  	return block;
  }
  
  public Boolean visit(SemiColon stmt){
  	return false;
  }
    
  public Boolean visit(InternInvkStmt stmt){
  	return false;
  }	
  
  public Boolean visit(ExternInvkStmt stmt){
  	return false;
  }

  public Boolean visit (NegativeExpr expr)   {
    Type operand = expr.getType();
    return (operand == type);
  }

  public Boolean visit (NegationExpr expr)   {
    Type operand = expr.getType();
    return (operand == type);
  }

  public Boolean visit (RelExpr expr)   {
    Type operand = expr.getType();
    return (operand == type);    
  }

  public Boolean visit (ArithExpr expr)   {
    Type leftOperand = expr.getLeftOperand().getType();
    Type rightOperand = expr.getRightOperand().getType();
    if (leftOperand == rightOperand)
        return (leftOperand == type);
    else 
        // La unica manera que los operando que sean distintos es que uno sea entero y el otro real, por lo
        // tanto la operacion es de tipo real
        return (Type.FLOAT == type);
  }

  public Boolean visit (CondExpr expr)   {    
    Type operand = expr.getType();
    return (operand == type);
  }

  public Boolean visit (EqExpr expr)   {
    Type operand = expr.getType();
    return (operand == type);
  }

  public Boolean visit (InParentExpr expr){
    Type operand = expr.getType();
    return (operand == type);
  }

  public Boolean visit (InternInvkExpr expr){
    Type operand = expr.getType();
    return (operand == type);    
  } 
  
  public Boolean visit (ExternInvkExpr expr){
    Type operand = expr.getType();
    return (operand == type);
  }
  
// visit literals
  public Boolean visit(IntLiteral lit)   {
    Type operand = lit.getType();
    return (operand == type);
  }

 public Boolean visit(FloatLiteral lit)   {
    Type operand = lit.getType();
    return (operand == type);
  }

  public Boolean visit(BoolLiteral lit)   {
    Type operand = lit.getType();
    return (operand == type);
  }   
  
// visit locations  
  public Boolean visit(VarLocation loc)   {
    Type operand = loc.getType();
    return (operand == type);
  }

  public Boolean visit(ArrayLocation loc)  {
    Type operand = loc.getType();
    return (operand == type);  
  }

  private void addError(AST a, String desc) {
	errors.add(new Error(a.getLineNumber(), a.getColumnNumber(), desc));
  }

  public List<Error> getErrors() {
	return errors;
  }

}
