package ir;

import ir.ast.*;

public class Visitor implements ASTVisitor{
 
  //Constructor
  public Visitor(){}

  public Type visit(AssignStmt stmt){
    return null;
  }

  public Type visit(IncrementAssign stmt) throws Exception {
  	/*Expression expr = stmt.getExpression()
    String operator= expr.getOperator().toString();
    String leftOperand  = expr.getLeftOperand().getType().toString();
    if (operator == "+=" ){
      if (!((rightOperand.equals("int") || rightOperand.equals("float")) && leftOperand.equals(rightOperand))){
        throw new Exception("ERROR in " + operator + " operator");
      }
    }*/
    return null;
  }
  public Type visit(DecrementAssign stmt) throws Exception {
    /*Expression expr = stmt.getExpression()
    String operator= expr.getOperator().toString();
    String leftOperand  = expr.getLeftOperand().getType().toString();
    if (operator == "-=" ){
      if (!((rightOperand.equals("int") || rightOperand.equals("float")) && leftOperand.equals(rightOperand))){
        throw new Exception("ERROR in " + operator + " operator");
      }
    }*/
    return null;
  }
  public Type visit(SimpleAssign stmt) throws Exception {
   /*
    Expression expr = stmt.getExpression()
    String operator= expr.getOperator().toString();
    String leftOperand  = expr.getLeftOperand().getType().toString();
    String rightOperand = expr.getRightOperand().getType().toString();
    if (operator == "=") {
      if (!leftOperand.equals(rightOperand)){
        throw new Exception("Type Error, you can't assign a " + rightOperand + " to a " + leftOperand);
      }
    }
   */
    return null;
  }
  public Type visit(ReturnStmt stmt){
    Expression expr = stmt.getExpression();
  	return null;
  }
  public Type visit(IfStmt stmt){
  	return null;
  }
  public Type visit(WhileStmt stmt){
  	return null;
  }	
  public Type visit(Block stmt){
  	return null;
  }
  public Type visit(ContinueStmt stmt){
  	return null;
  }
  public Type visit(BreakStmt stmt){
  	return null;
  }
  public Type visit(CycleStmt stmt){
  	return null;
  }
  public Type visit(ForStmt stmt){
  	return null;
  }
  public Type visit(SemiColon stmt){
  	return null;
  }
  public Type visit(MethodCallStmt stmt){
  	return null;
  }	
  public Type visit(InternInvkStmt stmt){
  	return null;
  }	
  public Type visit(ExternInvkStmt stmt){
  	return null;
  }

  // visit expressions
  public Type visit(BinOpExpr expr) throws Exception{
    String operator= expr.getOperator().toString();
    String leftOperand  = expr.getLeftOperand().getType().toString();
    String rightOperand = expr.getRightOperand().getType().toString();
    if (leftOperand.equals(rightOperand)){
      if(leftOperand.equals("int") || leftOperand.equals("float")){
        if(operator.equals("&&") || operator.equals("||") ){
          throw new Exception("Type Error, you can't use " + rightOperand + " with " + operator);
        }
      }    
    }
    if (!leftOperand.equals(rightOperand)){
      throw new Exception("Type Error, you can't use " + rightOperand + " with " + leftOperand + "in operation: " + operator);
    }
    if (leftOperand.equals("undefined") || rightOperand.equals("undefined")){
      throw new Exception( "Type Error, operands with undefined type");
    }
    return null;
  }

  public Type visit (NegativeExpr expr) throws Exception {
    String type = expr.getType().toString();
    if (!(type.equals("int") || type.equals("float"))){
      throw new Exception("Type Error, Numerical expression expected, not a: " + type);     
    }
    return null;
  }

  public Type visit (NegationExpr expr) throws Exception {
    String type = expr.getType().toString();
    if (!type.equals("boolean")){
      throw new Exception("Type Error, Boolean expression expected, not a: " + type);     
    }
    return null;
  }

  public Type visit (RelExpr expr) throws Exception {
    String operator = expr.getOperator().toString();
    if (!(operator.equals(">=") || operator.equals(">") || operator.equals("<=") || operator.equals("<"))){
     throw new Exception("Type Error, Relation expression expected, not a: " + operator);     
    } 
    return null;
  }

  public Type visit (ArithExpr expr) throws Exception {
    String operator = expr.getOperator().toString();
    if  (!(operator.equals("-") || operator.equals("/") || operator.equals("*") || operator.equals("+") || operator.equals("%"))){
     throw new Exception("Type Error, Arithmetic expression expected, not a: " + operator);
    } 
    return null;
  }

  public Type visit (CondExpr expr) throws Exception {
    String operator = expr.getOperator().toString();
    if (!(operator.equals("&&") || operator.equals("||"))){
     throw new Exception("Type Error, Conditional expression expected, not a: " + operator);     
    } 
    return null;
  }

  public Type visit (EqExpr expr) throws Exception {
    String operator = expr.getOperator().toString();
    if (!(operator.equals("==") || operator.equals("!="))){
     throw new Exception("Type Error, Equivalence expression expected, not a: " + operator);     
    } 
    return null;
  }

  public Type visit (InParentExpr expr){return null;}
  public Type visit (MethodCallExpr expr){return null;} 
  public Type visit (InternInvkExpr expr){return null;} 
  public Type visit (ExternInvkExpr expr){return null;}
  
// visit literals
  public Type visit(IntLiteral lit) throws Exception {
    String type = lit.getType().toString();
    if (!(type.equals("int"))){
      throw new Exception("Type Error, Wrong type int expected, not a: " + type);
    }
    return null;
  }

 public Type visit(FloatLiteral lit) throws Exception {
    String type = lit.getType().toString();
    if (!(type.equals("float"))){
      throw new Exception("Type Error, Wrong type float expected, not a: " + type);
    }
    return null;
  }

  public Type visit(BoolLiteral lit) throws Exception {
    String type = lit.getType().toString();
    if (!(type.equals("boolean"))){
      throw new Exception("Type Error, Wrong type boolean expected, not a: " + type);
    }
    return null;
  }   
  
// visit locations  
  public Type visit(VarLocation loc) throws Exception {
    if (loc.getBlockId() == 0){
      throw new Exception("Error, block not found "); 
    }
    return null;
  }

  public Type visit(ArrayLocation loc)throws Exception {
    if (loc.getBlockId() == 0){
      throw new Exception("Error, block not found "); 
    }
    return null;
  }

}
