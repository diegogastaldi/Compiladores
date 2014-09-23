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
import intermediateCode.Instr;
import intermediateCode.Operator;
import intermediateCode.Labels;
import ir.ASTVisitor;
import compiler2014.completeFunction;

public class InstCodeGenVisitor implements ASTVisitor<String>{
  private List<Instr> instructions; 

  //Constructor
  public InstCodeGenVisitor(){
    instructions = new LinkedList<Instr>();
  }

  public List<Instr> getInst() {
    return instructions;
  }

  public String visit(IncrementAssign stmt)   {
//    String expr = stmt.getExpression().accept(this);
//    String loc = stmt.getLocation().accept(this);
    return null;
  }
  
  public String visit(DecrementAssign stmt)   {
//    String expr = stmt.getExpression().accept(this);
//    String loc = stmt.getLocation().accept(this);
    return null;
  }
  
  public String visit(SimpleAssign stmt)   {
//    String expr = stmt.getExpression().accept(this);
//    String loc = stmt.getLocation().accept(this);
    return null;
  }
  
  public String visit(ReturnStmt stmt) {
//    if (stmt.getExpression() != null) {
  //      String e = stmt.getExpression().accept(this);
    //}
  	return null;
  }
  
  public String visit(IfStmt stmt)  {
//    String cond = stmt.getCondition().accept(this);
  //  String blockIf = stmt.getIfBlock().accept(this);
    //if (stmt.getElseBlock() != null) {
    //	String blockElse = stmt.getElseBlock().accept(this);	
    //}
  	return null;
  }
  
  public String visit(WhileStmt stmt)  {
//    String cond = stmt.getCondition().accept(this);
//    String block = stmt.getBlock().accept(this);
  	return null;
  }
  	
  public String visit(Block stmt){
//    for (Statement s : stmt.getStatements()) {
//        s.accept(this);
//    }
  	return null;
  }
  
  public String visit(ContinueStmt stmt){
  	return null;
  }
  
  public String visit(BreakStmt stmt){
  	return null;
  }
    
  public String visit(ForStmt stmt)  {
//    String expr1 = stmt.getAssignExpr().accept(this);
//    String expr2 = stmt.getCondition().accept(this);
//    String block = stmt.getBlock().accept(this);
  	return null;
  }
  
  public String visit(SemiColon stmt){
  	return null;
  }
    
  public String visit(InternInvkStmt stmt){
  	String parameters = "";
    for (Expression a : stmt.getParameters()) {
        parameters += a.accept(this);
        parameters += ",";
    }
    /* Remueve la ultima coma */
    parameters = parameters.substring(0, parameters.length()-1);
  	String result = Labels.getLabel();
    instructions.add(new Instr(Operator.CALLINTMETHOD, stmt.getId()+"("+parameters+")", null, result));
  	return null;
  }	
  
  public String visit(ExternInvkStmt stmt){
  	/*
    for (ArgInvoc a : stmt.getParameters()) {
        if (!(a instanceof ArgInvocSL)) 
            ((ArgInvocExpr)a).getExpression().accept(this);
    }*/
  	return null; 
  }

  public String visit (NegativeExpr expr)   {
    String operand = expr.getExpression().accept(this);
  	String result = Labels.getLabel();

	instructions.add(new Instr(Operator.NOT, operand, null, result));

    return result;
  }

  public String visit (NegationExpr expr)   {
    String operand = expr.getExpression().accept(this);
  	String result = Labels.getLabel();

	instructions.add(new Instr(Operator.UNARYMINUS, operand, null, result));

    return result;
  }

  public String visit (RelExpr expr)   {
    String leftOperand = expr.getLeftOperand().accept(this);
    String rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	String result = Labels.getLabel();
  	Operator op = null;
  	switch (operator) {
		case LE:
				op = Operator.LE;
		case GE:
				op = Operator.GE;
		case GEQ:
				op = Operator.GEQ;
		case LEQ:
				op = Operator.LEQ;
	}
	instructions.add(new Instr(op, leftOperand, rightOperand, result));

    return result;
  }

  public String visit (ArithExpr expr)   {
    String leftOperand = expr.getLeftOperand().accept(this);
    String rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	String result = Labels.getLabel();
  	Operator op = null;
  	switch (operator) {
		case PLUS:
				op = Operator.PLUS;
		case MINUS:
				op = Operator.MINUS;
		case MULTIPLY:
				op = Operator.MULTIPLY;
		case DIVIDE:
				op = Operator.DIVIDE;
		case MOD:
				op = Operator.MOD;		
  	}
  	instructions.add(new Instr(op, leftOperand, rightOperand, result));

    return result;
  }

  public String visit (CondExpr expr)   {
    String leftOperand = expr.getLeftOperand().accept(this);
    String rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	String result = Labels.getLabel();
  	switch (operator) {
  		case AND : instructions.add(new Instr(Operator.AND, leftOperand, rightOperand, result));
  		case OR : instructions.add(new Instr(Operator.OR, leftOperand, rightOperand, result));    	
  	}
    return result;
  }

  public String visit (EqExpr expr)   {
    String leftOperand = expr.getLeftOperand().accept(this);
    String rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	String result = Labels.getLabel();

  	switch (operator) {
  		case CEQ : instructions.add(new Instr(Operator.CEQ, leftOperand, rightOperand, result));
  		case NEQ : instructions.add(new Instr(Operator.NEQ, leftOperand, rightOperand, result));
  	}

    return result;
  }

  public String visit (InParentExpr expr){
    return expr.getExpression().accept(this);
  }

  public String visit (InternInvkExpr expr){
  	String parameters = "";
    for (Expression a : expr.getParameters()) {
        parameters += a.accept(this);
        parameters += ",";
    }
    /* Remueve la ultima coma */
    parameters = parameters.substring(0, parameters.length()-1);
  	String result = Labels.getLabel();
    instructions.add(new Instr(Operator.CALLINTMETHOD, expr.getId()+"("+parameters+")", null, result));
    return result;
  } 
  
  public String visit (ExternInvkExpr expr){
  	/* 
    for (ArgInvoc a : expr.getParameters()) {
        if (!(a instanceof ArgInvocSL)) 
            ((ArgInvocExpr)a).getExpression().accept(this);
    }*/
    return null;
  }
  
// visit literals
  public String visit(IntLiteral lit)   {
    return lit.getValue().toString();
  }

 public String visit(FloatLiteral lit)   {
    return lit.getValue().toString();
  }

  public String visit(BoolLiteral lit)   {
    return lit.getValue().toString();
  }
  
// visit locations  
  public String visit(VarLocation loc)   {
    return loc.getId();
  }

  public String visit(ArrayLocation loc)  {
  	String index = loc.getExpression().accept(this);
  	String result = Labels.getLabel();
  	instructions.add(new Instr(Operator.ARRAYINDEX, loc.getId()+"["+result+"]", null, result));
    return result;
  }

}
