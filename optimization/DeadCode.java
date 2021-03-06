/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************

  Elimina tanto el codigo muerto o sentencias 
  inalcazables como tambien sentencias
  redundates (por ejemplo: if true). 

*/
package optimization;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import ir.ASTVisitor;
import semanticAnalyzer.CompleteFunction;

public class DeadCode implements ASTVisitor<Statement>{

  public List<CompleteFunction> optimize(List<CompleteFunction> ast) {
    for (CompleteFunction c : ast) {
    	/* Optimiza todos los bloques */
      c.setBlock((Block)c.getBlock().accept(this));
    }
    return ast;
  }

  public Statement visit(IncrementAssign stmt)   {
    return stmt;
  }
  
  public Statement visit(DecrementAssign stmt)   {
    return stmt;
  }
  
  public Statement visit(SimpleAssign stmt)   {
    return stmt;
  }
  
  public Statement visit(ReturnStmt stmt) {
  	return stmt;
  }
  
  public Statement visit(IfStmt stmt)  {
  	/* Si la condicion determina que bloque se va a ejecutar
  		se reemplaza la sentencia if por dicho bloque */
    Expression cond = stmt.getCondition();
    if (cond instanceof BoolLiteral) {
      if (((BoolLiteral)cond).getValue()) 
        return stmt.getIfBlock().accept(this);
      else {
        if (stmt.getElseBlock() != null) 
          return stmt.getElseBlock().accept(this);  
        else 
        	return new SemiColon();
      }
    } else {
      stmt.setIfBlock((Block)stmt.getIfBlock().accept(this));
      if (stmt.getElseBlock() != null) 
      	stmt.setElseBlock((Block)stmt.getElseBlock().accept(this));
      return stmt;
    }
  }
  
  public Statement visit(WhileStmt stmt)  {
    Expression cond = stmt.getCondition();
    if ((cond instanceof BoolLiteral) && (!(((BoolLiteral)cond).getValue())))  
    	/* Si la condicion determina que el bloque no se va a ejecutar se elimina la sentencia while */
    	return new SemiColon();
    else{
			stmt.setBlock((Block)stmt.getBlock().accept(this));
      return stmt;
    }
  }
  	
  public Statement visit(Block stmt){
  	Statement current;
  	List<Statement> newBlock = new LinkedList<Statement>();
    for (Statement s : stmt.getStatements()) {
	    current = s.accept(this);
	    newBlock.add(current);
      if ((current instanceof BreakStmt) || (current instanceof ContinueStmt) || (current instanceof ReturnStmt))
      	/* Si en una bloque se alcanza una de estas sentencias, las siguientes no se ejecutaran por lo que se borran */
      	break;
    }
    stmt.setStatements(newBlock);
  	return stmt;
  }
  
  public Statement visit(ContinueStmt stmt){
  	return stmt;
  }
  
  public Statement visit(BreakStmt stmt){
  	return stmt;
  }
    
  public Statement visit(ForStmt stmt)  {
  	/* Optimiza cada expresion */
    Expression expr1 = stmt.getAssignExpr();
    Expression expr2 = stmt.getCondition();
    if ((expr1 instanceof IntLiteral) && (expr2 instanceof IntLiteral) && (((IntLiteral)expr1).getValue() >= ((IntLiteral)expr2).getValue()))
    	/* Si nunca entra al bloque, se elimna la sentencia for */
      return new SemiColon();
    else {
    	stmt.setBlock((Block)stmt.getBlock().accept(this));
      return stmt;
    }
  }
  
  public Statement visit(SemiColon stmt){
  	return stmt;
  }
    
  public Statement visit(InternInvkStmt stmt){
    return stmt;
  }
  
  public Statement visit(ExternInvkStmt stmt){
    return stmt;
  }

  public Statement visit (NegativeExpr expr)   {
  	return null;
  }

  public Statement visit (NegationExpr expr)   {
  	return null;
  }

  public Statement visit (RelExpr expr)   {
  	return null;
  }

  public Statement visit (ArithExpr expr)   {
  	return null;
  }

  public Statement visit (CondExpr expr)   {
  	return null;
  }

  public Statement visit (EqExpr expr)   {
  	return null;
  }

  public Statement visit (InParentExpr expr){
  	return null;
  }

  public Statement visit (InternInvkExpr expr){
  	return null;
  } 
  
  public Statement visit (ExternInvkExpr expr){
  	return null;
  }
  
// visit literals
  public Statement visit(IntLiteral lit)   {
  	return null;
  }

 public Statement visit(FloatLiteral lit)   {
  	return null;
  }

  public Statement visit(BoolLiteral lit)   {
  	return null;
  }   
  
// visit locations  
  public Statement visit(VarLocation loc)   {
  	return null;
  }

  public Statement visit(ArrayLocation loc)  {
  	return null;
  }
}
 
