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

package intermediateCode;

import java.util.List;
import java.util.LinkedList;
import ir.ast.*;
import ir.ASTVisitor;
import semanticAnalyzer.*;

public class InstCodeGenVisitor implements ASTVisitor<Integer>{
  /* Instrucciones generadas a partir del los bloques */
  private List<Instr> instructions; 
  /* Guarda los label de inicios y fines de ciclos para que si se alcanza una sentencia break o continua salte a la eiqueta que corresponde */
  private List<String> labelsStack;
  /* Generador de direcciones de memoria y labes que no se repiten */
  private Labels genLabels;
  /* Indica el lugar donde va la "Cabecera del metodo" para reservar los lugares del stack necesarios */
  private Integer posMethodLabel;

  //Constructor
  public InstCodeGenVisitor(){
    instructions = new LinkedList<Instr>();
    labelsStack = new LinkedList<String>();
    genLabels = new Labels();
    /* Indica inicio de codigo assembler */
    instructions.add(new Instr(Operator.TEXT, null, null, ".text\n"));
  }

  /* Crea las instrucciones para las variables globales */
  public void globalVar( List<absSymbol> globals) {
    for (absSymbol g : globals) {
      if (g instanceof arraySymbol)
        instructions.add(new Instr(Operator.GLOBAL, g.getName(), ((arraySymbol)g).getSize()*8, null));
      else 
        instructions.add(new Instr(Operator.GLOBAL, g.getName(), 8, null));
    }
  }

  public void blockCode(completeFunction c) {
    posMethodLabel = instructions.size();
    /* Reinicia labels */
    genLabels.restart(c.getParameters().size()+ c.getLocalVars());
    /* Genera instrucciones assembler */
    c.getBlock().accept(this);
    /* Calcula el espacio a reservar */
    int reserveSpace = (-genLabels.getOffSet()/8)-1;
    /* Label de inicio de funcion */
    instructions.add(posMethodLabel, new Instr(Operator.METHODLABEL, reserveSpace, c.getParameters().size(), c.getName()));     
  }

  public List<Instr> getInst() {
    return instructions;
  }

  public Integer visit(IncrementAssign stmt)   {
    /* Genera instrucciones para la expresion*/
    Integer expr = stmt.getExpression().accept(this);    
    /* Label donde guardara el resultado */
    Integer result = genLabels.getOffSet();

    Location location = stmt.getLocation();

    if (!location.getIsGlobal()) {
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) {
        /* Genera instrucciones para el Location*/
        Integer loc = stmt.getLocation().accept(this);
    		/* Realiza el incremento */
    		instructions.add(new Instr(Operator.PLUS, expr, loc, result));
        instructions.add(new Instr(Operator.VARASSIGN, result, null, loc));
      }
      else {
        ArrayLocation a = (ArrayLocation) stmt.getLocation();
        /* Realiza el incremento */
    		instructions.add(new Instr(Operator.PLUS, expr, a.getOffSet(), result));
        instructions.add(new Instr(Operator.ARRAYASSIGN, result, a.getExpression().accept(this), a.getOffSet()));
      }
    } else {
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) {
      	/* Realiza el incremento */
    		instructions.add(new Instr(Operator.PLUS, expr, location.accept(this), result));
        instructions.add(new Instr(Operator.VARASSIGNGLOBAL, result, null, location.getId()));
      }
      else {
      	/* Realiza el incremento */
    		instructions.add(new Instr(Operator.PLUS, expr, location.accept(this), result));      	
        ArrayLocation a = (ArrayLocation) stmt.getLocation();
        instructions.add(new Instr(Operator.ARRAYASSIGNGLOBAL, result, (Integer)a.getExpression().accept(this), location.getId()));
      }      
    }
    return null;
  }
  
  public Integer visit(DecrementAssign stmt)   {
    /* Genera instrucciones para la expresion*/
    Integer expr = stmt.getExpression().accept(this);    
    /* Label donde guardara el resultado */
    Integer result = genLabels.getOffSet();

    Location location = stmt.getLocation();

    if (!location.getIsGlobal()) {
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) {
        /* Genera instrucciones para el Location*/
        Integer loc = stmt.getLocation().accept(this);
		    /* Realiza el decremento */
    		instructions.add(new Instr(Operator.MINUS, expr, loc, result));
        instructions.add(new Instr(Operator.VARASSIGN, result, null, loc));
      }
      else {
        ArrayLocation a = (ArrayLocation) stmt.getLocation();
    		/* Realiza el decremento */
    		instructions.add(new Instr(Operator.MINUS, expr, a.getOffSet(), result));      	        
        instructions.add(new Instr(Operator.ARRAYASSIGN, result, a.getExpression().accept(this), a.getOffSet()));
      }
    } else {
    	/* Realiza el decremento */
    	instructions.add(new Instr(Operator.MINUS, expr, location.accept(this), result));      	
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) 
        instructions.add(new Instr(Operator.VARASSIGNGLOBAL, result, null, location.getId()));
      else {
        ArrayLocation a = (ArrayLocation) stmt.getLocation();
        instructions.add(new Instr(Operator.ARRAYASSIGNGLOBAL, result, (Integer)a.getExpression().accept(this), location.getId()));
      }
    }
    return null;
  }
  
  public Integer visit(SimpleAssign stmt)   {
    /* Genera instrucciones para la expresion*/
    Integer expr = stmt.getExpression().accept(this);    
    Location location = stmt.getLocation();    
    if (!location.getIsGlobal()) {
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) {
        /* Genera instrucciones para el Location*/
        Integer loc = stmt.getLocation().accept(this);
        instructions.add(new Instr(Operator.VARASSIGN, expr, null, loc));
      }
      else {
        ArrayLocation a = (ArrayLocation) stmt.getLocation();
        instructions.add(new Instr(Operator.ARRAYASSIGN, expr, a.getExpression().accept(this), a.getOffSet()));
      }
    } else {
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) 
        instructions.add(new Instr(Operator.VARASSIGNGLOBAL, expr, null, location.getId()));
      else {
        ArrayLocation a = (ArrayLocation) stmt.getLocation();
        instructions.add(new Instr(Operator.ARRAYASSIGNGLOBAL, expr, (Integer)a.getExpression().accept(this), location.getId()));
      }
      
    }
    return null;
  }
  
  public Integer visit(ReturnStmt stmt) {
  	Integer e = null;
  	/* Genera instrucciones para la expresion */
    if (stmt.getExpression() != null) {
        e = stmt.getExpression().accept(this);
    }
    instructions.add(new Instr(Operator.RETURN, null, null, e));
  	return null;
  }
  
  public Integer visit(IfStmt stmt)  {
    /* Genera las instrucciones para evaluar la condicion */
    Integer cond = stmt.getCondition().accept(this);
	  String labelElse = "falseCond"+genLabels.getLabel();
    Integer vtrue = genLabels.getOffSet();
    instructions.add(new Instr(Operator.CONST, "1", null, vtrue));
    instructions.add(new Instr(Operator.CMP, cond, vtrue/*true*/, null));
	  /* Si la condicion es verdadera no salta */
	  instructions.add(new Instr(Operator.JNE, null, null, labelElse));
	  /* Crea las instruccions del bloque if */
	  Integer blockIf = stmt.getIfBlock().accept(this);
    
    if (stmt.getElseBlock() != null) {    
	    String labelEndIf = "endIf"+genLabels.getLabel();
	    /* Si llego aca es porque se ejecuto el bloque if, por lo que salta 
	       ejecutar el bloque else */
	    instructions.add(new Instr(Operator.JMP, null, null, labelEndIf));
	    /* Pone Label else */
	    instructions.add(new Instr(Operator.LABEL, null, null, labelElse));
	    /* Crea las instrucciones del bloque else */
	   	Integer blockElse = stmt.getElseBlock().accept(this);
	   	/* Pone Label end if*/
	    instructions.add(new Instr(Operator.LABEL, null, null, labelEndIf));
    } else 
    	/* Pone label al que se saltara si este if no tiene un bloque else y 
    		la condidion del mismo es falsa */
	    instructions.add(new Instr(Operator.LABEL, null, null, labelElse));
     
  	return null;
  }
  
  public Integer visit(WhileStmt stmt)  {
    String labelEndWhile = "endWhile"+genLabels.getLabel();
    String labelBeginWhile = "beginWhile"+genLabels.getLabel();

    /* Actualizacion del stack */
    labelsStack.add(labelsStack.size(), labelBeginWhile);
    labelsStack.add(labelsStack.size(), labelEndWhile);

    /* Pone el label de inicio de ciclo */
	  instructions.add(new Instr(Operator.LABEL, null, null, labelBeginWhile));
    /* Genera las instrucciones para evaluar la condicion */
    Integer cond = stmt.getCondition().accept(this);	
    /* Si la condicion es verdadera no salta */
    Integer vtrue = genLabels.getOffSet();
    instructions.add(new Instr(Operator.CONST, "1", null, vtrue));
    instructions.add(new Instr(Operator.CMP, cond, vtrue /*True*/, null));
	  instructions.add(new Instr(Operator.JNE, null, null, labelEndWhile));
	  /* Crea las instruccions del bloque */
	  Integer block = stmt.getBlock().accept(this);
    /* Vuelve al inicio del ciclo */
    instructions.add(new Instr(Operator.JMP, null, null, labelBeginWhile));	
    /* Pone el label de fin de ciclo */
	  instructions.add(new Instr(Operator.LABEL, null, null, labelEndWhile));

    /* Actualizacion del stack */
    labelsStack.remove(labelsStack.size() -1);
    labelsStack.remove(labelsStack.size() -1);

  	return null;
  }
  
  public Integer visit(ContinueStmt stmt){
  	/* El penultimo label del stack es el inicio del ciclo mas interno que contiene esta instruccion */
  	instructions.add(new Instr(Operator.JMP, null, null, labelsStack.get(labelsStack.size()-2)));
  	return null;
  }
  
  public Integer visit(BreakStmt stmt){
  	/* El ultimo label del stack es el inicio del ciclo mas interno que contiene esta instruccion */
  	instructions.add(new Instr(Operator.JMP, null, null, labelsStack.get(labelsStack.size()-1)));
  	return null;
  }
    
  public Integer visit(ForStmt stmt)  {
    String labelEndFor = "endFor"+genLabels.getLabel();
    String labelBeginFor = "beginFor"+genLabels.getLabel();
    Integer incrementValue = genLabels.getOffSet();
    /* Variable a incrementar */
    instructions.add(new Instr(Operator.CONST, "1", null, incrementValue));

    /* Actualizacion del stack */
    labelsStack.add(labelsStack.size(), labelBeginFor);
    labelsStack.add(labelsStack.size(), labelEndFor);

  	/* Genera codigo para la primer expresion */
    Integer expr1 = stmt.getAssignExpr().accept(this);
  	/* Genera codigo para la segunda expresion */    
		Integer expr2 = stmt.getCondition().accept(this);
    /* Salta a evaluar las condiciones */
    instructions.add(new Instr(Operator.JMP, null, null, labelEndFor));
    /* Pone la etiqueta de inicio del for */
	  instructions.add(new Instr(Operator.LABEL, null, null, labelBeginFor));
    /* Genera las instrucciones para el bloque */
    Integer block = stmt.getBlock().accept(this);
    /* Incrementa el contador */
    instructions.add(new Instr(Operator.PLUS, expr1, incrementValue, expr1));

		instructions.add(new Instr(Operator.VARASSIGN, expr1, null, stmt.getLocation().accept(this)));

    /* Pone la etique de fin del for */
    instructions.add(new Instr(Operator.LABEL, null, null, labelEndFor));    
    /* Compara las expresiones */
	  instructions.add(new Instr(Operator.CMP, expr2, expr1, null));
	  /* Si la primera es menor que la segunda no salta*/
	  instructions.add(new Instr(Operator.JLE, null, null, labelBeginFor));

    /* Actualizacion del stack */
    labelsStack.remove(labelsStack.size() -1);
    labelsStack.remove(labelsStack.size() -1);
     
  	return null;
  }
  
  public Integer visit(SemiColon stmt){
  	/* No genera codigo */
  	return null;
  }

  public Integer visit(Block stmt){
  	/* Genera codigo para todas las sentencias del bloque */
    for (Statement s : stmt.getStatements()) {
        s.accept(this);
    }
    return null;
  }
    
  public Integer visit(InternInvkStmt stmt){
  	Integer parameter;
    Expression a;
    List<Instr> param = new LinkedList<Instr>();
    for (int i = 0; i < stmt.getParameters().size(); i++) {
      a = stmt.getParameters().get(i);
      parameter = a.accept(this);
      /* Apila paramatros en memoria */
      param.add(new Instr(Operator.PARAM, parameter, i, genLabels.getOffSet()));
    }
    instructions.addAll(param);
    /* Realiza la llamada a la funcion */
    instructions.add(new Instr(Operator.CALLMETHOD, stmt.getId(), null, null));

    return null;
  }	
  
  public Integer visit(ExternInvkStmt stmt){
    Integer parameter;    
    ArgInvoc a;
    List<Instr> param = new LinkedList<Instr>();
    for (int i = 0; i < stmt.getParameters().size(); i++) {
      a = stmt.getParameters().get(i);
      if (!(a instanceof ArgInvocSL)) {
        parameter = ((ArgInvocExpr)a).getExpression().accept(this);
        param.add(new Instr(Operator.PARAM, parameter, i, genLabels.getOffSet()));                
      } else {
        String label = genLabels.getLabel();
        instructions.add(0, new Instr(Operator.STRING, a.toString(), "L0"+label, null));
        posMethodLabel ++;
        param.add(new Instr(Operator.PARAM, "$.L0"+label, i, genLabels.getOffSet()));        
      }
    }
    instructions.addAll(param);
    Integer result = genLabels.getOffSet();
    instructions.add(new Instr(Operator.CALLMETHOD, stmt.getId(), genLabels.getOffSet(), result));
  	return null; 
  }

  public Integer visit (NegativeExpr expr)   {
    Integer operand = expr.getExpression().accept(this);
    Integer result = genLabels.getOffSet();

	  instructions.add(new Instr(Operator.UNARYMINUS, operand, null, result));
    return result;
  }

  public Integer visit (NegationExpr expr)   {
    Integer operand = expr.getExpression().accept(this);
    Integer result = genLabels.getOffSet();

	  instructions.add(new Instr(Operator.NOT, operand, null, result));
    return result;
  }

  public Integer visit (RelExpr expr)   {
    Integer leftOperand = expr.getLeftOperand().accept(this);
    Integer rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

  	Integer result = genLabels.getOffSet();
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

  public Integer visit (ArithExpr expr)   {
    Integer leftOperand = expr.getLeftOperand().accept(this);
    Integer rightOperand = expr.getRightOperand().accept(this);
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
    Integer result = genLabels.getOffSet();
  	instructions.add(new Instr(op, leftOperand, rightOperand, result));
     
    return result;
  }

  public Integer visit (CondExpr expr)   {
    Integer leftOperand = expr.getLeftOperand().accept(this);
    Integer rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

    Integer result = genLabels.getOffSet();
    /* Lista con los operandos de la operacion */
    List<Integer> operand = new LinkedList<Integer>();
    operand.add(leftOperand);
    operand.add(rightOperand);
    /* Lista con los labels necesarios para la operacion */
    List<String> labels = new LinkedList<String>();
    labels.add(genLabels.getLabel());
    labels.add(genLabels.getLabel());

  	switch (operator) {
  		case AND : 	instructions.add(new Instr(Operator.AND, labels, operand, result));
  								break;
  		case OR : 	labels.add(genLabels.getLabel());
                  instructions.add(new Instr(Operator.OR, labels, operand, result));
  								break;
  	}    
    return result;
  }

  public Integer visit (EqExpr expr)   {
    Integer leftOperand = expr.getLeftOperand().accept(this);
    Integer rightOperand = expr.getRightOperand().accept(this);
    BinOpType operator = expr.getOperator();

    Integer result = genLabels.getOffSet();
  	switch (operator) {
  		case CEQ : 	instructions.add(new Instr(Operator.CEQ, leftOperand, rightOperand, result));
  								break;
  		case NEQ : 	instructions.add(new Instr(Operator.NEQ, leftOperand, rightOperand, result));
    							break;
  	}
    return result;
  }

  public Integer visit (InParentExpr expr){
    return expr.getExpression().accept(this);
  }

  public Integer visit (InternInvkExpr expr){
  	Integer parameter;
    Expression a;
    List<Instr> param = new LinkedList<Instr>();
    for (int i = 0; i < expr.getParameters().size(); i++) {
      a = expr.getParameters().get(i);
      parameter = a.accept(this);
      param.add(new Instr(Operator.PARAM, parameter, i, genLabels.getOffSet()));
    }
    instructions.addAll(param);
    /* Llama al metodo */
    Integer result = genLabels.getOffSet();
    instructions.add(new Instr(Operator.CALLMETHOD, expr.getId(), genLabels.getOffSet(), result));
    return result;
  } 
  
  public Integer visit (ExternInvkExpr expr){
    Integer parameter;    
    ArgInvoc a;
    List<Instr> param = new LinkedList<Instr>();
    for (int i = 0; i < expr.getParameters().size(); i++) {
      a = expr.getParameters().get(i);
      if (!(a instanceof ArgInvocSL)) {
        parameter = ((ArgInvocExpr)a).getExpression().accept(this);
        param.add(new Instr(Operator.PARAM, parameter, i, genLabels.getOffSet()));                
      } else {
        String label = genLabels.getLabel();
        instructions.add(0, new Instr(Operator.STRING, a.toString(), "L0"+label, null));
        posMethodLabel ++;
        param.add(new Instr(Operator.PARAM, "$.L0"+label, i, genLabels.getOffSet()));        
      }
    }
    instructions.addAll(param);
    Integer result = genLabels.getOffSet();
    instructions.add(new Instr(Operator.CALLMETHOD, expr.getId(), genLabels.getOffSet(), result));
             
    return result;
  }
  
// visit literals
  public Integer visit(IntLiteral lit)   {
    /* Guarda el literal en una direccion de memoria */
    Integer result = genLabels.getOffSet();
  	instructions.add(new Instr(Operator.CONST, lit, null, result));
             
    return result;
  }

 public Integer visit(FloatLiteral lit)   {
    Integer result = genLabels.getOffSet();
    /*

			VEER COMOOO TRATAAR LOS FLOAAT

    */
  	instructions.add(new Instr(Operator.CONST, lit, null, result));

    return result;
  }

  public Integer visit(BoolLiteral lit)   {
  	Integer result = genLabels.getOffSet();
  	/* Los valores booleanos se representan mediante unos y ceros */
    if (lit.getValue())
  	  instructions.add(new Instr(Operator.CONST, "1", null, result));
    else 
      instructions.add(new Instr(Operator.CONST, "0", null, result));
    return result;
  }
  
// visit locations  
  public Integer visit(VarLocation loc)   {
    if (!loc.getIsGlobal()) {
      int os = loc.getOffSet();
      /* Si el numero es mayor a cero es porque es un parametro, los cuales
        tiene su lugar reservado al principio del stack */
      if (os >=  0) 
        return (os + 2) * (-8);
      else 
        return os;
    } else {
      Integer result = genLabels.getOffSet();
      instructions.add(new Instr(Operator.GLOBALVALUEVAR, loc.getId(), null, result));
      return result;
    }
  }

  public Integer visit(ArrayLocation loc)  {
    if (!loc.getIsGlobal()) {
      Integer expr = loc.getExpression().accept(this);
      Integer result = genLabels.getOffSet();
      instructions.add(new Instr(Operator.VALUEARRAY, loc.getOffSet(), expr, result));
      return result;
    }
    else {
      Integer expr = loc.getExpression().accept(this);
      Integer result = genLabels.getOffSet();
      instructions.add(new Instr(Operator.GLOBALVALUEARRAY, loc.getId(), expr, result));
      return result;
    }
  }
}