/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase implementa el patron visitor, 
  la cual realiza el chequeo de tipos, tanto
  en asignaciones, como en operaciones y en
  sentencias del programa (como condiciones
  de if por ejemplo)
  
*/
package ir.semcheck;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import error.Error;
import ir.ASTVisitor;

public class TypeCheckVisitor implements ASTVisitor<Type>{
  private List<Error> errors; 
  //Constructor
  public TypeCheckVisitor(){
    errors = new LinkedList<Error>();
  }

  public Type visit(IncrementAssign stmt)   {
    Type expr = stmt.getExpression().accept(this);
    Type loc = stmt.getLocation().accept(this);
    if ((expr == Type.BOOLEAN) || (loc == Type.BOOLEAN)){
    addError(stmt,"Los operandos de la asignacion += no pueden ser de tipo Bool");
    }
    return null;
  }
  
  public Type visit(DecrementAssign stmt)   {
    Type expr = stmt.getExpression().accept(this);
    Type loc = stmt.getLocation().accept(this);
    if ((expr == Type.BOOLEAN) || (loc == Type.BOOLEAN)){
    addError(stmt,"Los operandos de la asignacion -= no pueden ser de tipo Bool");
    }
    return null;
  }
  
  public Type visit(SimpleAssign stmt)   {
    Type expr = stmt.getExpression().accept(this);
    Type loc = stmt.getLocation().accept(this);
    if (expr != loc){
    addError(stmt,"Los operandos de la asignacion = deben ser de igual tipo");
    }
    return null;
  }
  
  public Type visit(ReturnStmt stmt) {
    if (stmt.getExpression() != null) {
        Type e = stmt.getExpression().accept(this);
    }
  	return null;
  }
  
  public Type visit(IfStmt stmt)  {
    Type cond = stmt.getCondition().accept(this);
    if (cond != Type.BOOLEAN) {
    		addError(stmt,"La condicion de la sentencia If debe ser de tipo Bool");
    }
    Type blockIf = stmt.getIfBlock().accept(this);
    if (stmt.getElseBlock() != null) {
    	Type blockElse = stmt.getElseBlock().accept(this);	
    }
  	return null;
  }
  
  public Type visit(WhileStmt stmt)  {
    Type cond = stmt.getCondition().accept(this);
    Type block = stmt.getBlock().accept(this);
    if (cond != Type.BOOLEAN) {
    addError(stmt,"La condicion de la sentencia While debe ser de tipo Bool");
    }
  	return null;
  }
  	
  public Type visit(Block stmt){
    for (Statement s : stmt.getStatements()) {
        s.accept(this);
    }
  	return null;
  }
  
  public Type visit(ContinueStmt stmt){
  	return null;
  }
  
  public Type visit(BreakStmt stmt){
  	return null;
  }
    
  public Type visit(ForStmt stmt)  {
    Type expr1 = stmt.getAssignExpr().accept(this);
    Type expr2 = stmt.getCondition().accept(this);
    Type block = stmt.getBlock().accept(this);
    if ((expr1 != Type.INT) || (expr2 != Type.INT)) {
    addError(stmt,"Las expresiones del For debe ser de tipo Int");
    }
  	return null;
  }
  
  public Type visit(SemiColon stmt){
  	return null;
  }
    
  public Type visit(InternInvkStmt stmt){
    for (Expression e : stmt.getParameters()) {
        e.accept(this);
    }
  	return null;
  }	
  
  public Type visit(ExternInvkStmt stmt){
    for (ArgInvoc a : stmt.getParameters()) {
        if (!(a instanceof ArgInvocSL)) 
            ((ArgInvocExpr)a).getExpression().accept(this);
    }
  	return null;
  }

  public Type visit (NegativeExpr expr)   {
    Type operand = expr.getExpression().accept(this);
    if (operand == Type.BOOLEAN){
    addError(expr,"La expresion luego del - no puede ser de tipo Bool");
    }
    return operand;
  }

  public Type visit (NegationExpr expr)   {
    Type operand = expr.getExpression().accept(this);
    if (operand != Type.BOOLEAN){
    addError(expr,"La condicion de la expresion ! debe ser de tipo Bool");  
    }
    return operand;
  }

  public Type visit (RelExpr expr)   {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if  (leftOperand == Type.BOOLEAN || rightOperand == Type.BOOLEAN){
    addError(expr,"Los operando de una expresion relacional no pueden ser de tipo Bool");
    } 
    switch(operator){
      case DIVIDE: case MINUS: case MULTIPLY: case PLUS: case CEQ: case NEQ:
      case AND: case OR: case MOD:
				    addError(expr,"Error interno:  Al Crear una operacion Relacional");  
      default: return Type.BOOLEAN;
    }
  }

  public Type visit (ArithExpr expr)   {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if  (leftOperand == Type.BOOLEAN || rightOperand == Type.BOOLEAN){
    addError(expr,"Los operando de una expresion aritmetica no peden ser Bool");
    } 
    switch(operator){
      case LE: case LEQ: case GE: case GEQ: case CEQ: case NEQ:
      case AND: case OR:

      case DIVIDE: case MOD:
        if(!(leftOperand == rightOperand)){
				    addError(expr,"Error interno:  Al Crear una operacion Aritmetica");  
         }else return leftOperand; 
      case PLUS: case MINUS: case MULTIPLY:
        if (!(leftOperand == rightOperand)){
          return Type.FLOAT;
        }else return leftOperand;
    }
    return null;
  }

  public Type visit (CondExpr expr)   {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if (!(operator == BinOpType.AND || operator == BinOpType.OR)){
	    addError(expr,"Error interno:  Al Crear una operacion Condicional");  
    }
    if ( !(leftOperand == rightOperand)){
	    addError(expr,"Los operandos de una expresion condicional deben ser del mismo tipo");  
    }
    if ( (leftOperand != Type.BOOLEAN)){
 		  addError(expr,"Los operando de una expresion booleana deben ser de tipo bool");
    } 
    return Type.BOOLEAN;
  }

  public Type visit (EqExpr expr)   {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if (!(operator == BinOpType.CEQ || operator == BinOpType.NEQ)){
 		  addError(expr,"Error interno:  Al Crear una operacion de Equivalencia");
    }
    if (! (leftOperand == rightOperand)){
	    addError(expr,"Los operandos de una expresion de Equivalencia deben ser del mismo tipo");  
    } 
    return Type.BOOLEAN;
  }

  public Type visit (InParentExpr expr){
    return expr.getExpression().accept(this);
  }

  public Type visit (InternInvkExpr expr){
    for (Expression e : expr.getParameters()) {
        e.accept(this);
    }
    return expr.getType();
  } 
  
  public Type visit (ExternInvkExpr expr){
    for (ArgInvoc a : expr.getParameters()) {
        if (!(a instanceof ArgInvocSL)) 
            ((ArgInvocExpr)a).getExpression().accept(this);
    }
    return expr.getType();
  }
  
// visit literals
  public Type visit(IntLiteral lit)   {
    return lit.getType();
  }

 public Type visit(FloatLiteral lit)   {
    return lit.getType();
  }

  public Type visit(BoolLiteral lit)   {
    return lit.getType();
  }   
  
// visit locations  
  public Type visit(VarLocation loc)   {
    return loc.getType();
  }

  public Type visit(ArrayLocation loc)  {
    Type expression = loc.getExpression().accept(this); 
    if (expression == Type.BOOLEAN){
	    addError(loc,"La expresion del ArrayLocation debe ser entera");  
    }
    return loc.getType();
  }

  private void addError(AST a, String desc) {
	errors.add(new Error(a.getLineNumber(), a.getColumnNumber(), desc));
  }

  public List<Error> getErrors() {
	return errors;
  }

}
