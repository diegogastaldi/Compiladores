package ir.semcheck;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import error.Error;
import ir.ASTVisitor;
import compiler2014.symbolTable;
import compiler2014.absSymbol;
import compiler2014.functionSymbol;

public class MethodInvocCheckVisitor implements ASTVisitor<Boolean>{
  private List<Error> errors; 
  private symbolTable st;
  //Constructor
  public MethodInvocCheckVisitor(symbolTable st){
    errors = new LinkedList<Error>();
    this.st = st;
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
    Boolean block = stmt.getBlock().accept(this);
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
    absSymbol a = st.search(stmt.getId());
    if (a instanceof functionSymbol) {
        functionSymbol f = (functionSymbol)a;
        if (f.parameters.size() == stmt.getParameters().size()) {
            for (absSymbol p : f.parameters) {
                for (Expression e : stmt.getParameters()) {
                    if (e.getType() != p.type) {
                        addError(stmt, "No coinciden tipos de parametros formales con actuales");
                        return false;
                    }
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
            ret = ret && ((ArgInvocExpr)a).getExpression().accept(this);
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
    absSymbol a = st.search(expr.getId());
    if (a instanceof functionSymbol) {
        functionSymbol f = (functionSymbol)a;
        if (f.type != Type.VOID) {
            if (f.parameters.size() == expr.getParameters().size()) {
                for (absSymbol p : f.parameters) {
                    for (Expression e : expr.getParameters()) {
                        if (e.getType() != p.type) {
                            addError(expr, "No coinciden tipos de parametros formales con actuales");
                            return false;
                        }
                    }
                }
                return true;
            } else {
                addError(expr, "No coinciden cantidad de parametros formales con actuales");
                return false;
            }
        } else {
            addError(expr, "Retorno de la funcion de tipo null: No puede ser parte de una funcion");
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
        if (a instanceof ArgInvocExpr) {
            ret = ret && ((ArgInvocExpr)a).getExpression().accept(this);
        }
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

}
