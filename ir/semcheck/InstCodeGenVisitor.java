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
  private List<String> labelsStack;

  //Constructor
  public InstCodeGenVisitor(){
    instructions = new LinkedList<Instr>();
    labelsStack = new LinkedList<String>();
  }

  public List<Instr> getInst() {
    return instructions;
  }

  public void addInstr(Instr i) {
  	instructions.add(i);
  }

  public String visit(IncrementAssign stmt)   {
    String expr = stmt.getExpression().accept(this);
    String loc = stmt.getLocation().accept(this);
    String result = Labels.getLabel();
    instructions.add(new Instr(Operator.PLUS, expr, "1", result));
    instructions.add(new Instr(Operator.ASSIGN, result, null, loc));
    return null;
  }
  
  public String visit(DecrementAssign stmt)   {
    String expr = stmt.getExpression().accept(this);
    String loc = stmt.getLocation().accept(this);
    String result = Labels.getLabel();
    instructions.add(new Instr(Operator.MINUS, expr, "1", result));
    instructions.add(new Instr(Operator.ASSIGN, result, null, loc));
    return null;
  }
  
  public String visit(SimpleAssign stmt)   {
    String expr = stmt.getExpression().accept(this);
    String loc = stmt.getLocation().accept(this);
    instructions.add(new Instr(Operator.ASSIGN, expr, null, loc));
    return null;
  }
  
  public String visit(ReturnStmt stmt) {
//    if (stmt.getExpression() != null) {
  //      String e = stmt.getExpression().accept(this);
    //}
  	return null;
  }
  
  public String visit(IfStmt stmt)  {
    /* Genera las instrucciones para evaluar la condicion */
    String cond = stmt.getCondition().accept(this);
	String labelElse = "falseCond"+Labels.getLabel();
    instructions.add(new Instr(Operator.CMP, cond, "true", null));
	/* Si la condicion es verdadera no salta */
	instructions.add(new Instr(Operator.JNE, null, null, labelElse));
	/* Crea las instruccions del bloque if */
	String blockIf = stmt.getIfBlock().accept(this);
    
    if (stmt.getElseBlock() != null) {    
	    String labelEndIf = "endIf"+Labels.getLabel();
	    /* Si llego aca es porque se ejecuto el bloque if, por lo que salta 
	       ejecutar el bloque else */
	    instructions.add(new Instr(Operator.JMP, null, null, labelEndIf));
	    /* Pone Label else */
	    instructions.add(new Instr(Operator.LABEL, null, null, labelElse));
	    /* Crea las instrucciones del bloque else */
	   	String blockElse = stmt.getElseBlock().accept(this);
	   	/* Pone Label end if*/
	    instructions.add(new Instr(Operator.LABEL, null, null, labelEndIf));
    } else 
    	/* Pone label al que se saltara si este if no tiene un bloque else y 
    		la condidion del mismo es falsa */
	    instructions.add(new Instr(Operator.LABEL, null, null, labelElse));
    
  	return null;
  }
  
  public String visit(WhileStmt stmt)  {
    String labelEndWhile = "endWhile"+Labels.getLabel();
    String labelBeginWhile = "beginWhile"+Labels.getLabel();

    /* Actualizacion del stack */
    labelsStack.add(labelsStack.size(), labelBeginWhile);
    labelsStack.add(labelsStack.size(), labelEndWhile);

    /* Pone el label de inicio de ciclo */
	instructions.add(new Instr(Operator.LABEL, null, null, labelBeginWhile));
    /* Genera las instrucciones para evaluar la condicion */
    String cond = stmt.getCondition().accept(this);	
    /* Si la condicion es verdadera no salta */
    instructions.add(new Instr(Operator.CMP, cond, "true", null));
	instructions.add(new Instr(Operator.JNE, null, null, labelEndWhile));
	/* Crea las instruccions del bloque */
	String block = stmt.getBlock().accept(this);
    /* Vuelve al inicio del ciclo */
    instructions.add(new Instr(Operator.JMP, null, null, labelBeginWhile));	
    /* Pone el label de fin de ciclo */
	instructions.add(new Instr(Operator.LABEL, null, null, labelEndWhile));

    /* Actualizacion del stack */
    labelsStack.remove(labelsStack.size() -1);
    labelsStack.remove(labelsStack.size() -1);

  	return null;
  }
  
  public String visit(ContinueStmt stmt){
  	/* El penultimo label del stack es el inicio del ciclo mas interno que contiene esta instruccion */
  	instructions.add(new Instr(Operator.JMP, null, null, labelsStack.get(labelsStack.size()-2)));
  	return null;
  }
  
  public String visit(BreakStmt stmt){
  	/* El ultimo label del stack es el inicio del ciclo mas interno que contiene esta instruccion */
  	instructions.add(new Instr(Operator.JMP, null, null, labelsStack.get(labelsStack.size()-1)));
  	return null;
  }
    
  public String visit(ForStmt stmt)  {
    String labelEndFor = "endFor"+Labels.getLabel();
    String labelBeginFor = "beginFor"+Labels.getLabel();

    /* Actualizacion del stack */
    labelsStack.add(labelsStack.size(), labelBeginFor);
    labelsStack.add(labelsStack.size(), labelEndFor);

  	/* Genera codigo para la primer expresion */
    String expr1 = stmt.getCondition().accept(this);
    /* Obtiene una variable para ir aumentando el valor de expr1 */
    String var1 = Labels.getLabel();
    instructions.add(new Instr(Operator.ASSIGN, expr1, null, var1));
  	/* Genera codigo para la segunda expresion */    
    String expr2 = stmt.getAssignExpr().accept(this);

    /* Pone la etiqueta de inicio del for */
	instructions.add(new Instr(Operator.LABEL, null, null, labelBeginFor));        
    /* Compara las expresiones */
	instructions.add(new Instr(Operator.CMP, var1, expr2, null));
	/* Si la primera es menor que la segunda no salta*/
	instructions.add(new Instr(Operator.JNL, null, null, labelEndFor));
	/* Genera las instrucciones para el bloque */
    String block = stmt.getBlock().accept(this);
    /* Incrementa el contador */
    instructions.add(new Instr(Operator.PLUS, var1, "1", var1));
    /* Vuelve al inicio del ciclo */
    instructions.add(new Instr(Operator.JMP, null, null, labelBeginFor));
    /* Pone la etique de fin del for */
	instructions.add(new Instr(Operator.LABEL, null, null, labelEndFor));    

    /* Actualizacion del stack */
    labelsStack.remove(labelsStack.size() -1);
    labelsStack.remove(labelsStack.size() -1);

  	return null;
  }
  
  public String visit(SemiColon stmt){
  	/* No genera codigo */
  	return null;
  }

  public String visit(Block stmt){
    for (Statement s : stmt.getStatements()) {
        s.accept(this);
    }
    return null;
  }
    
  public String visit(InternInvkStmt stmt){
  	String parameters = "";
    for (Expression a : stmt.getParameters()) {
        parameters += a.accept(this);
        parameters += ",";
    }
    /* Remueve la ultima coma */
    if (parameters.length() > 0)
    	parameters = parameters.substring(0, parameters.length()-1);
    instructions.add(new Instr(Operator.CALLINTMETHOD, stmt.getId()+"("+parameters+")", null, null));
  	return null;
  }	
  
  public String visit(ExternInvkStmt stmt){
    String parameters = "";
    for (ArgInvoc a : stmt.getParameters()) {
        if (!(a instanceof ArgInvocSL)) {
          parameters += ((ArgInvocExpr)a).getExpression().accept(this);
          parameters += ",";
        } else
          parameters += a.toString();
    }
    /* Remueve la ultima coma */
    if (parameters.length() > 0)
        parameters = parameters.substring(0, parameters.length()-1);
    instructions.add(new Instr(Operator.CALLEXTMETHOD, stmt.getId()+"("+parameters+")", null,null));
  	return null; 
  }

  public String visit (NegativeExpr expr)   {
    String operand = expr.getExpression().accept(this);
  	String result = Labels.getLabel();

	instructions.add(new Instr(Operator.UNARYMINUS, operand, null, result));

    return result;
  }

  public String visit (NegationExpr expr)   {
    String operand = expr.getExpression().accept(this);
  	String result = Labels.getLabel();

	instructions.add(new Instr(Operator.NOT, operand, null, result));

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
				break;
		case GE:
				op = Operator.GE;
				break;
		case GEQ:
				op = Operator.GEQ;
				break;
		case LEQ:
				op = Operator.LEQ;
				break;
	}
	instructions.add(new Instr(op, leftOperand, rightOperand, result));

    return result;
  }

  public String visit (ArithExpr expr)   {
    String leftOperand = expr.getLeftOperand().accept(this);
    String rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	Operator op = null;
  	switch (operator) {
		case PLUS:
				op = Operator.PLUS;
				break;
		case MINUS:
				op = Operator.MINUS;
				break;
		case MULTIPLY:
				op = Operator.MULTIPLY;
				break;
		case DIVIDE:
				op = Operator.DIVIDE;
				break;
		case MOD:
				op = Operator.MOD;		
				break;
  	}
  	String result = Labels.getLabel();
  	instructions.add(new Instr(op, leftOperand, rightOperand, result));

    return result;
  }

  public String visit (CondExpr expr)   {
    String leftOperand = expr.getLeftOperand().accept(this);
    String rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	String result = Labels.getLabel();
  	switch (operator) {
  		case AND : 	instructions.add(new Instr(Operator.AND, leftOperand, rightOperand, result));
  					break;
  		case OR : 	instructions.add(new Instr(Operator.OR, leftOperand, rightOperand, result));
  					break;
  	}
    return result;
  }

  public String visit (EqExpr expr)   {
    String leftOperand = expr.getLeftOperand().accept(this);
    String rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	String result = Labels.getLabel();

  	switch (operator) {
  		case CEQ : 	instructions.add(new Instr(Operator.CEQ, leftOperand, rightOperand, result));
  					break;
  		case NEQ : 	instructions.add(new Instr(Operator.NEQ, leftOperand, rightOperand, result));
  					break;
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
    if (parameters.length() > 0)
    	parameters = parameters.substring(0, parameters.length()-1);
  	String result = Labels.getLabel();
    instructions.add(new Instr(Operator.CALLINTMETHOD, expr.getId()+"("+parameters+")", null, result));
    return result;
  } 
  
  public String visit (ExternInvkExpr expr){
    String parameters = "";
    for (ArgInvoc a : expr.getParameters()) {
        if (!(a instanceof ArgInvocSL)) 
          parameters += ((ArgInvocExpr)a).getExpression().accept(this);
        else
          parameters += a.toString();
        parameters += ",";
    }
    /* Remueve la ultima coma */
    if (parameters.length() > 0)
        parameters = parameters.substring(0, parameters.length()-1);
    String result = Labels.getLabel();
    instructions.add(new Instr(Operator.CALLEXTMETHOD, expr.getId()+"("+parameters+")", null, result));
    return result;
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
  	instructions.add(new Instr(Operator.ARRAYINDEX, loc.getId()+"["+index+"]", null, result));
    return result;
  }

}
