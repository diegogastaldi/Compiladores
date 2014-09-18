package ir.semcheck;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import error.Error;
import ir.ASTVisitor;

public class BreakContCheckVisitor implements ASTVisitor<Boolean>{
  private List<Error> errors; 
  private Boolean inCycle;
  
  //Constructor
  public BreakContCheckVisitor(){
    errors = new LinkedList<Error>();
    inCycle = false;
  }
  
  public Boolean visit(IncrementAssign stmt)   {
    return true;
  }
  
  public Boolean visit(DecrementAssign stmt)   {
    return true;
  }
  
  public Boolean visit(SimpleAssign stmt)   {
    return true;
  }
  
  public Boolean visit(ReturnStmt stmt){
    return true;
  }
  
  public Boolean visit(IfStmt stmt)  {
    Boolean blockIf = stmt.getIfBlock().accept(this);
    if (stmt.getElseBlock() != null) {
    	Boolean blockElse = stmt.getElseBlock().accept(this);	
        return blockElse && blockIf;
    }
    return blockIf;
  }
  
  public Boolean visit(WhileStmt stmt)  {
    inCycle = true;
    Boolean block = stmt.getBlock().accept(this);
    inCycle = false;
  	return block;
  }
  	
  public Boolean visit(Block stmt){
    Boolean block = true;
    for (Statement s : stmt.getStatements()) {
        block = block && s.accept(this);
    }
  	return block;
  }
  
  public Boolean visit(ContinueStmt stmt){
  System.out.println("LLego a break");
    if (!inCycle)
      addError(stmt, "Las sentencias continue deben estar dentro de un ciclo");
    return inCycle;
  }
  
  public Boolean visit(BreakStmt stmt){
    if (!inCycle)
      addError(stmt, "Las sentencias break deben estar dentro de un ciclo");
    return inCycle;
  }
    
  public Boolean visit(ForStmt stmt)  {
    inCycle = true;
    Boolean block = stmt.getBlock().accept(this);
    inCycle = false;
  	return block;
  }
  
  public Boolean visit(SemiColon stmt){
  	return true;
  }
    
  public Boolean visit(InternInvkStmt stmt){
  	return true;
  }	
  
  public Boolean visit(ExternInvkStmt stmt){
  	return true;
  }

  public Boolean visit (NegativeExpr expr)   {
    return true;
  }

  public Boolean visit (NegationExpr expr)   {
    return true;
  }

  public Boolean visit (RelExpr expr)   {
    return true;
  }

  public Boolean visit (ArithExpr expr)   {
    return true;
  }

  public Boolean visit (CondExpr expr)   {    
    return true;
  }

  public Boolean visit (EqExpr expr)   {
    return true;
  }

  public Boolean visit (InParentExpr expr){
    return true;
  }

  public Boolean visit (InternInvkExpr expr){
    return true;
  } 
  
  public Boolean visit (ExternInvkExpr expr){
    return true;
  }
  
// visit literals
  public Boolean visit(IntLiteral lit)   {
    return true;
  }

 public Boolean visit(FloatLiteral lit)   {
    return true;
  }

  public Boolean visit(BoolLiteral lit)   {
    return true;
  }   
  
// visit locations  
  public Boolean visit(VarLocation loc)   {
    return true;
  }

  public Boolean visit(ArrayLocation loc)  {
    return true;
  }

  private void addError(AST a, String desc) {
	errors.add(new Error(a.getLineNumber(), a.getColumnNumber(), desc));
  }

  public List<Error> getErrors() {
	return errors;
  }

}
