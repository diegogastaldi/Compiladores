/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase implementa el patron visitor, 
  la cual comprueba que tanto si hay sentencias 
  break o visitor, esten dentro de un ciclo, 
  como indica las especificaciones del lenguaje.  
*/

package ir.semcheck;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import error.Error;
import ir.ASTVisitor;

public class BreakContCheckVisitor implements ASTVisitor<Boolean>{
  private List<Error> errors; 
  
  //Constructor
  public BreakContCheckVisitor(){
    errors = new LinkedList<Error>();
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
  	return true;
  }
  	
  public Boolean visit(Block stmt){
    Boolean block = true;
    for (Statement s : stmt.getStatements()) {
        block = block && s.accept(this);
    }
  	return block;
  }
  
  public Boolean visit(ContinueStmt stmt){
  	/* Al no entrar a las secuencias de los ciclos, cada que encuetra una sentencia continue, es un error */
    addError(stmt, "Las sentencias continue deben estar dentro de un ciclo");
    return false;
  }
  
  public Boolean visit(BreakStmt stmt){
  	/* Al no entrar a las secuencias de los ciclos, cada que encuetra una sentencia break, es un error */
    addError(stmt, "Las sentencias break deben estar dentro de un ciclo");
    return false;
  }
    
  public Boolean visit(ForStmt stmt)  {
  	return false;
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
