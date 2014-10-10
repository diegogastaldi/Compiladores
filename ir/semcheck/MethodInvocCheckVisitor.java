/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase implementa el patron visitor, 
  la cual comprueba que las invocaciones a 
  metodos se realizen correctamente, tanto
  por la cantidad de parametros, como por los 
  tipos de los mismos.
  
*/
package ir.semcheck;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import error.Error;
import ir.ASTVisitor;
import semanticAnalyzer.absSymbol;
import semanticAnalyzer.functionSymbol;
import semanticAnalyzer.completeFunction;

public class MethodInvocCheckVisitor implements ASTVisitor<Boolean>{
  private List<Error> errors; 
  private List<completeFunction> cf;
  //Constructor
  public MethodInvocCheckVisitor(List<completeFunction> cf){
    errors = new LinkedList<Error>();
    this.cf = cf;
  }
  
  public Boolean visit(IncrementAssign stmt)   {
    return stmt.getExpression().accept(this);
  }
  
  public Boolean visit(DecrementAssign stmt)   {
    return stmt.getExpression().accept(this);
  }
  
  public Boolean visit(SimpleAssign stmt)   {
    return stmt.getExpression().accept(this);
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
    Boolean block = stmt.getBlock().accept(this);
  	return block;
  }
  	
  public Boolean visit(Block stmt){
    Boolean block = true;
    for (Statement s : stmt.getStatements()) {
        block = s.accept(this) && block;
    }
  	return block;
  }
  
  public Boolean visit(ContinueStmt stmt){
    return true;
  }
  
  public Boolean visit(BreakStmt stmt){
    return true;
  }
    
  public Boolean visit(ForStmt stmt)  {
    Boolean block = stmt.getBlock().accept(this);
  	return block;
  }
  
  public Boolean visit(SemiColon stmt){
  	return true;
  }
    
  public Boolean visit(InternInvkStmt stmt){
    completeFunction f = searchBlock(stmt.getId());
    if (f != null) {
        if (f.getParameters().size() == stmt.getParameters().size()) {
            absSymbol p; 
            Expression e;
            for (int i = 0; i < stmt.getParameters().size(); i++) {
              p = f.getParameters().get(i);
              e = stmt.getParameters().get(i);
              if (e.getType() != p.getType()) {
                addError(stmt, "No coinciden tipos de parametros formales con actuales");
                return false;
              }
                
            }
            return true;
        } else {
            addError(stmt, "No coinciden cantidad de parametros formales con actuales");
            return false;   
        }
    } else {
        addError(stmt, "Actual id no es de tipo function");
        return false;
    } 
  }
  	
  
  public Boolean visit(ExternInvkStmt stmt){
    Boolean ret = true;
    List<ArgInvoc> args = stmt.getParameters();
    for (ArgInvoc a : args) {
        if (a instanceof ArgInvocExpr) {
            ret = ((ArgInvocExpr)a).getExpression().accept(this) && ret ;
        }
    }
    return ret;
  }

  public Boolean visit (NegativeExpr expr)   {
    return expr.getExpression().accept(this);
  }

  public Boolean visit (NegationExpr expr)   {
    return expr.getExpression().accept(this);
  }

  public Boolean visit (RelExpr expr)   {
    Boolean left = expr.getLeftOperand().accept(this);
    Boolean right = expr.getRightOperand().accept(this);
    return left && right;
  }

  public Boolean visit (ArithExpr expr)   {
    Boolean left = expr.getLeftOperand().accept(this);
    Boolean right = expr.getRightOperand().accept(this);
    return left && right;
  }

  public Boolean visit (CondExpr expr)   {    
    Boolean left = expr.getLeftOperand().accept(this);
    Boolean right = expr.getRightOperand().accept(this);
    return left && right;
  }

  public Boolean visit (EqExpr expr)   {
    Boolean left = expr.getLeftOperand().accept(this);
    Boolean right = expr.getRightOperand().accept(this);
    return left && right;
  }

  public Boolean visit (InParentExpr expr){
    return expr.getExpression().accept(this);
  }

  public Boolean visit (InternInvkExpr expr){
    completeFunction f = searchBlock(expr.getId());
    if (f != null) {
        if (f.getParameters().size() == expr.getParameters().size()) {
            if (f.getType() != Type.VOID) {
                absSymbol p; 
                Expression e;
                for (int i = 0; i < expr.getParameters().size(); i++) {
                  p = f.getParameters().get(i); 
                  e = expr.getParameters().get(i);
                  if (e.getType() != p.getType()) {
                    addError(expr, "No coinciden tipos de parametros formales con actuales");
                    return false;
                  }
                  
                }
                return true;
            } else {
                addError(expr, "Las funciones que retornan void no pueden formar parte de expresiones   ");
                return false;   
            }
        } else {
            addError(expr, "No coinciden cantidad de parametros formales con actuales");
            return false;   
        }
    } else {
        addError(expr, "Actual id no es de tipo function");
        return false;
    } 
  } 
  
  public Boolean visit (ExternInvkExpr expr){
    Boolean ret = true;
    List<ArgInvoc> args = expr.getParameters();
    for (ArgInvoc a : args) {
      if (a instanceof ArgInvocExpr) 
          ret = ret && ((ArgInvocExpr)a).getExpression().accept(this);
    }
    return ret;
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

  /* Retorna el bloque con nombre "name" */
  private completeFunction searchBlock(String name) {
    for (completeFunction c : cf) {
        if (c.getName().equals(name)) 
            return c;
    }
    return null;
  }
}
