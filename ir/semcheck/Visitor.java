package ir;

import ir.ast.*;

public class Visitor implements ASTVisitor{
 
  //Constructor
  public Visitor(){}

  public Type visit(AssignStmt stmt){
    return null;
  }

  public Type visit(IncrementAssign stmt) throws Exception {
    Type exprType = stmt.getExpression().accept(this);
    Location location= stmt.getLocation();
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
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if (leftOperand == rightOperand ){
      if(leftOperand != Type.BOOLEAN){
        if(operator == BinOpType.AND || operator == BinOpType.OR){
          throw new Exception("Type Error, you can't use " + rightOperand.toString() + " with " + operator.toString());
        }
      }    
    }
    if (leftOperand != rightOperand){
      throw new Exception("Type Error, you can't use " + rightOperand + " with " + leftOperand + "in operation: " + operator);
    }
    if (leftOperand.equals("undefined") || rightOperand.equals("undefined")){
      throw new Exception( "Type Error, operands with undefined type");
    }
    return leftOperand;
  }

  public Type visit (NegativeExpr expr) throws Exception {
    Type operand = expr.getExpression().accept(this);
    if (operand == Type.BOOLEAN){
      throw new Exception("Type Error, Numerical expression expected, not a: " + operand.toString());     
    }
    return operand;
  }

  public Type visit (NegationExpr expr) throws Exception {
    Type operand = expr.getExpression().accept(this);
    if (operand != Type.BOOLEAN){
      throw new Exception("Type Error, Boolean expression expected, not a: " + operand.toString());     
    }
    return operand;
  }

  public Type visit (RelExpr expr) throws Exception {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if  (leftOperand == Type.BOOLEAN || rightOperand == Type.BOOLEAN){
     throw new Exception("Type Error, Relation expression expected, not Boolean");
    } 
    switch(operator){
      case BinOpType.DIVIDE, BinOpType.MINUS, BinOpType.MULTIPLY,
           BinOpType.PLUS, BinOpType.CEQ, BinOpType.NEQ,
           BinOpType.AND, BinOpType.OR, BinOpType.MOD:
           throw new Exception("Type Error, Relation expression expected");
      default: return Type.BOOLEAN;
    }
    return null;
  }

  public Type visit (ArithExpr expr) throws Exception {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if  (leftOperand == Type.BOOLEAN || rightOperand == Type.BOOLEAN){
     throw new Exception("Type Error, Arithmetic expression expected, not Boolean");
    } 
    switch(operator){
      case BinOpType.LE, BinOpType.LEQ, BinOpType.GE,
           BinOpType.GEQ, BinOpType.CEQ, BinOpType.NEQ,
           BinOpType.AND, BinOpType.OR:
           throw new Exception("Type Error, Arithmetic expression expected");
      case BinOpType.DIVIDE, BinOpType.MOD:
        if(!(leftOperand == rightOperand)){
           throw new Exception("Type Error, Arithmetic operands have different types");
         }else return leftOperand; 
      case BinOpType.PLUS, BinOpType.MINUS, BinOpType.MULTIPLY:
        if (!(leftOperand == rightOperand)){
          return Type.FLOAT;
        }else return leftOperand;
    }
    return null;
  }

  public Type visit (CondExpr expr) throws Exception {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if (!(operator == BinOpType.AND || operator == BinOpType.OR)){
      throw new Exception("Type Error, Equivalence operator expected not a: " + operator.toString());     
    }
    if ( !(leftOperand == rightOperand)){
     throw new Exception("Type Error, " + leftOperand.toString() + " distinct " + rightOperand.toString());     
    }
    if ( (leftOperand != Type.BOOLEAN)){
     throw new Exception("Type Error, Boolean expected, not a: " + operator.toString());     
    } 
    return Type.BOOLEAN;
  }

  public Type visit (EqExpr expr) throws Exception {
    Type leftOperand = expr.getLeftOperand().accept(this);
    Type rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if (!(operator == BinOpType.EQ || operator == BinOpType.NEQ)){
      throw new Exception("Type Error, Equivalence operator expected not a: " + operator.toString());     
    }
    if (! (leftOperand == rightOperand)){
      throw new Exception("Type Error, " + leftOperand.toString() + " distinct " + rightOperand.toString());     
    } 
    return Type.BOOLEAN;
  }

  public Type visit (InParentExpr expr){return null;}
  public Type visit (MethodCallExpr expr){return null;} 
  public Type visit (InternInvkExpr expr){return null;} 
  public Type visit (ExternInvkExpr expr){return null;}
  
// visit literals
  public Type visit(IntLiteral lit) throws Exception {
    return lit.getType();
  }

 public Type visit(FloatLiteral lit) throws Exception {
    return lit.getType();
  }

  public Type visit(BoolLiteral lit) throws Exception {
    return lit.getType();
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
