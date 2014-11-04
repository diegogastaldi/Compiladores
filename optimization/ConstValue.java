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
package optimization;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import ir.ASTVisitor;
import semanticAnalyzer.completeFunction;
public class ConstValue implements ASTVisitor<Expression>{

  public List<completeFunction> optimize(List<completeFunction> ast) {
    for (completeFunction c : ast) {
      c.getBlock().accept(this);
    }
    return ast;
  }

  public Expression visit(IncrementAssign stmt)   {
    stmt.setLocation((Location)stmt.getLocation().accept(this));
    stmt.setExpression(stmt.getExpression().accept(this));
    return null;
  }
  
  public Expression visit(DecrementAssign stmt)   {
    stmt.setLocation((Location)stmt.getLocation().accept(this));    
    stmt.setExpression(stmt.getExpression().accept(this));
    return null;
  }
  
  public Expression visit(SimpleAssign stmt)   {
    stmt.setLocation((Location)stmt.getLocation().accept(this));
    stmt.setExpression(stmt.getExpression().accept(this));
    return null;
  }
  
  public Expression visit(ReturnStmt stmt) {
    if (stmt.getExpression() != null) {
        stmt.setExpression(stmt.getExpression().accept(this));
    }
  	return null;
  }
  
  public Expression visit(IfStmt stmt)  {
    Expression cond = stmt.getCondition().accept(this);
    if (cond instanceof BoolLiteral) {
      if (((BoolLiteral)cond).getValue()) {
        stmt.getIfBlock().accept(this);
        stmt.setIfBlock(new Block());
      }
      else {
        if (stmt.getElseBlock() != null) {
          stmt.setElseBlock(null);
          stmt.getElseBlock().accept(this);  
        }
      }
    } else {
      stmt.getIfBlock().accept(this);
      if (stmt.getElseBlock() != null) 
      	stmt.getElseBlock().accept(this);
    }
  	return null;
  }
  
  public Expression visit(WhileStmt stmt)  {
    Expression cond = stmt.getCondition().accept(this);
    stmt.setCondition(cond);
    if ((cond instanceof BoolLiteral) && (!(((BoolLiteral)cond).getValue())))  
        stmt.setBlock(new Block());
    else
      stmt.getBlock().accept(this);
    return null;
  }
  	
  public Expression visit(Block stmt){
    for (Statement s : stmt.getStatements()) {
      s.accept(this);
    }
  	return null;
  }
  
  public Expression visit(ContinueStmt stmt){
  	return null;
  }
  
  public Expression visit(BreakStmt stmt){
  	return null;
  }
    
  public Expression visit(ForStmt stmt)  {
    Expression expr1 = stmt.getAssignExpr().accept(this);
    Expression expr2 = stmt.getCondition().accept(this);
    if ((expr1 instanceof IntLiteral) && (expr2 instanceof IntLiteral) && (((IntLiteral)expr1).getValue() >= ((IntLiteral)expr2).getValue()))
      stmt.setBlock(new Block());
    else {
      stmt.getBlock().accept(this);
      stmt.setCondition(expr2);
      stmt.setAssignExpr(expr1);
    }
    return null;
  }
  
  public Expression visit(SemiColon stmt){
  	return null;
  }
    
  public Expression visit(InternInvkStmt stmt){
    List<Expression> newParameters = new LinkedList<Expression>();
    for (Expression e : stmt.getParameters()) {
      newParameters.add(e.accept(this));
    }
    stmt.setParameters(newParameters);
    return null;
  }
  
  public Expression visit(ExternInvkStmt stmt){
    List<ArgInvoc> newParameters = new LinkedList<ArgInvoc>();
    for (ArgInvoc a : stmt.getParameters()) {
        if (!(a instanceof ArgInvocSL)) {
          ((ArgInvocExpr)a).setExpression(((ArgInvocExpr)a).getExpression().accept(this));
          newParameters.add(a);
        } else
          newParameters.add(a);
    }
    stmt.setParameters(newParameters);
    return null;
  }

  public Expression visit (NegativeExpr expr)   {
    Expression operand = expr.getExpression().accept(this);
    if (operand instanceof IntLiteral) {
      IntLiteral literal = (IntLiteral)operand;
      literal.setValue(- literal.getValue());
      return literal;
    } else {
      if (operand instanceof FloatLiteral) {
        FloatLiteral literal = (FloatLiteral)operand;
        literal.setValue(- literal.getValue());
        return literal;
      } else 
        return operand;
    }
  }

  public Expression visit (NegationExpr expr)   {
    Expression operand = expr.getExpression().accept(this);
    if (operand instanceof BoolLiteral) {
      BoolLiteral literal = (BoolLiteral)operand;
      literal.setValue(! literal.getValue());
      return literal;
    } else 
      return operand;  
  }

  public Expression visit (RelExpr expr)   {
    Expression leftOperand = expr.getLeftOperand().accept(this);
    Expression rightOperand = expr.getRightOperand().accept(this);
    if ((leftOperand instanceof IntLiteral) && (rightOperand instanceof IntLiteral)) {
      BinOpType operator = expr.getOperator();  
      IntLiteral left = (IntLiteral)leftOperand;
      IntLiteral right = (IntLiteral)rightOperand;
      switch (operator) {
        case LE:
          return new BoolLiteral(left.getValue() < right.getValue());
        case LEQ:
          return new BoolLiteral(left.getValue() <= right.getValue());
        case GE:
          return new BoolLiteral(left.getValue() > right.getValue());
        case GEQ:
          return new BoolLiteral(left.getValue() >= right.getValue());
        default : return null;
      }
    } else {
      if ((leftOperand instanceof FloatLiteral) && (rightOperand instanceof FloatLiteral)) {
        BinOpType operator = expr.getOperator();  
        FloatLiteral left = (FloatLiteral)leftOperand;
        FloatLiteral right = (FloatLiteral)rightOperand;
        switch (operator) {
          case LE:
            return new BoolLiteral(left.getValue() < right.getValue());
          case LEQ:
            return new BoolLiteral(left.getValue() <= right.getValue());
          case GE:
            return new BoolLiteral(left.getValue() > right.getValue());
          case GEQ:
            return new BoolLiteral(left.getValue() >= right.getValue());
          default : return null;            
        }
      } else {
        expr.setLeftOperand(leftOperand);
        expr.setRightOperand(rightOperand);
        return expr;
      }      
    }
  }

  public Expression visit (ArithExpr expr)   {
    Expression leftOperand = expr.getLeftOperand().accept(this);
    Expression rightOperand = expr.getRightOperand().accept(this);
    if ((leftOperand instanceof IntLiteral) && (rightOperand instanceof IntLiteral)) {
      BinOpType operator = expr.getOperator();  
      IntLiteral left = (IntLiteral)leftOperand;
      IntLiteral right = (IntLiteral)rightOperand;
      switch (operator) {
        case PLUS:
          return new IntLiteral(left.getValue() + right.getValue());
        case MINUS:
          return new IntLiteral(left.getValue() - right.getValue());
        case MULTIPLY:
          return new IntLiteral(left.getValue() * right.getValue());
        case DIVIDE:
          return new IntLiteral(left.getValue() / right.getValue());
        case MOD:
          return new IntLiteral(left.getValue() % right.getValue());
        default : return null;          
      }
    } else {
      if ((leftOperand instanceof FloatLiteral) && (rightOperand instanceof FloatLiteral)) {
        BinOpType operator = expr.getOperator();  
        FloatLiteral left = (FloatLiteral)leftOperand;
        FloatLiteral right = (FloatLiteral)rightOperand;
        switch (operator) {
          case PLUS:
            return new FloatLiteral(left.getValue() + right.getValue());
          case MINUS:
            return new FloatLiteral(left.getValue() - right.getValue());
          case MULTIPLY:
            return new FloatLiteral(left.getValue() * right.getValue());
          case DIVIDE:
            return new FloatLiteral(left.getValue() / right.getValue());
          case MOD:
            return new FloatLiteral(left.getValue() % right.getValue());
          default : return null;            
        } 
      } else {
        expr.setLeftOperand(leftOperand);
        expr.setRightOperand(rightOperand);
        return expr;
      }      
    }
  }

  public Expression visit (CondExpr expr)   {
    Expression leftOperand = expr.getLeftOperand().accept(this);
    Expression rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();
    if (leftOperand instanceof BoolLiteral) {
      BoolLiteral left = (BoolLiteral)leftOperand;
      if (!(rightOperand instanceof BoolLiteral)) {
        switch (operator) {
          case AND:
            if (left.getValue()) {
              return rightOperand;
            } else 
              return new BoolLiteral(left.getValue());
          case OR:
            if (left.getValue()) {
              return new BoolLiteral(left.getValue());
            } else 
              return rightOperand;
          default : return null;              
        }
      } else {
        BoolLiteral right = (BoolLiteral)rightOperand;
        switch (operator) {
          case AND:
            return new BoolLiteral(left.getValue() && right.getValue());
          case OR:
            return new BoolLiteral(left.getValue() || right.getValue());
          default : return null;            
        }
      }
    } else {
      if (rightOperand instanceof BoolLiteral) {
        BoolLiteral right = (BoolLiteral)rightOperand;
        switch (operator) {
          case AND:
            if (right.getValue()) {
              return leftOperand;
            } else 
              return new BoolLiteral(right.getValue());
          case OR:
            if (right.getValue()) {
              return new BoolLiteral(right.getValue());
            } else 
              return leftOperand;
          default : return null;              
        }
      } else {
        expr.setLeftOperand(leftOperand);
        expr.setRightOperand(rightOperand);
        return expr;
      }
    }      
  }

  public Expression visit (EqExpr expr)   {
    Expression leftOperand = expr.getLeftOperand().accept(this);
    Expression rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();  
    if ((leftOperand instanceof IntLiteral) && (rightOperand instanceof IntLiteral)) {
      IntLiteral left = (IntLiteral)leftOperand;
      IntLiteral right = (IntLiteral)rightOperand;
      switch (operator) {
        case CEQ:
          return new BoolLiteral(left.getValue() == right.getValue());
        case NEQ:
          return new BoolLiteral(left.getValue() != right.getValue());
        default : return null;          
      }
    } else {
      if ((leftOperand instanceof FloatLiteral) && (rightOperand instanceof FloatLiteral)) {
        FloatLiteral left = (FloatLiteral)leftOperand;
        FloatLiteral right = (FloatLiteral)rightOperand;
        switch (operator) {
          case CEQ:
            return new BoolLiteral(left.getValue() == right.getValue());
          case NEQ:
            return new BoolLiteral(left.getValue() != right.getValue());
          default : return null;            
        } 
      } else {
        if ((leftOperand instanceof BoolLiteral) && (rightOperand instanceof BoolLiteral)) {
          BoolLiteral left = (BoolLiteral)leftOperand;
          BoolLiteral right = (BoolLiteral)rightOperand;
          switch (operator) {
            case CEQ:
              return new BoolLiteral(left.getValue() == right.getValue());
            case NEQ:
              return new BoolLiteral(left.getValue() != right.getValue());
            default : return null;              
          }
        } else {
          expr.setLeftOperand(leftOperand);
          expr.setRightOperand(rightOperand);
          return expr;
        }      
      }
    }
  }

  public Expression visit (InParentExpr expr){
    return expr.getExpression().accept(this);
  }

  public Expression visit (InternInvkExpr expr){
    List<Expression> newParameters = new LinkedList<Expression>();
    for (Expression e : expr.getParameters()) {
        newParameters.add(e.accept(this));
    }
    expr.setParameters(newParameters);
    return expr;
  } 
  
  public Expression visit (ExternInvkExpr expr){
    List<ArgInvoc> newParameters = new LinkedList<ArgInvoc>();
    for (ArgInvoc a : expr.getParameters()) {
        if (!(a instanceof ArgInvocSL)) {
          ((ArgInvocExpr)a).setExpression(((ArgInvocExpr)a).getExpression().accept(this));
          newParameters.add(a);
        } else
          newParameters.add(a);
    }
    expr.setParameters(newParameters);
    return expr;
  }
  
// visit literals
  public Expression visit(IntLiteral lit)   {
    return lit;
  }

 public Expression visit(FloatLiteral lit)   {
    return lit;
  }

  public Expression visit(BoolLiteral lit)   {
    return lit;
  }   
  
// visit locations  
  public Expression visit(VarLocation loc)   {
    return loc;
  }

  public Expression visit(ArrayLocation loc)  {
    loc.setExpression(loc.getExpression().accept(this));
    
    return loc;
  }
}
