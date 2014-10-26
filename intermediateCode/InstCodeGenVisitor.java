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
  public void globalVar(List<absSymbol> globals) {
    for (absSymbol g : globals) {
      if (g instanceof arraySymbol)
        instructions.add(new Instr(Operator.GLOBAL, g.getName(), ((arraySymbol)g).getSize()*8, null));
      else 
        instructions.add(new Instr(Operator.GLOBAL, g.getName(), 8, null));
    }
  }

  /* Crea las instrucciones para el metodo main */ 
  public void blockCode(completeFunction c, List<absSymbol> globals) {
    posMethodLabel = instructions.size();
    /* Reinicia labels */
    genLabels.restart(c.getParameters().size()+ c.getLocalVars());
    /* Inicializo variables locales con valores por defecto */
    initLocalVar(c.getParameters().size()+1, c.getLocalVars());
    /* Inicializo variables globales con valores por defecto */
    initGlobalVar(globals);    
    /* Genera instrucciones assembler */
    c.getBlock().accept(this);
    /* Calcula el espacio a reservar */
    int reserveSpace = (-genLabels.getOffSet()/8)-1;
    /* Label de inicio de funcion */
    instructions.add(posMethodLabel, new Instr(Operator.METHODLABEL, reserveSpace, c.getParameters(), c.getName()));     
  }

  /* Crea instrucciones para todas las funciones distintas del main */
  public void blockCode(completeFunction c) {
    posMethodLabel = instructions.size();
    /* Reinicia labels */
    genLabels.restart(c.getParameters().size()+ c.getLocalVars());
    /* Inicializo variables locales con valores por defecto */
    initLocalVar(c.getParameters().size(), c.getLocalVars());
    /* Genera instrucciones assembler */
    c.getBlock().accept(this);
    /* Calcula el espacio a reservar */
    int reserveSpace = (-genLabels.getOffSet()/8)-1;
    /* Label de inicio de funcion */
    instructions.add(posMethodLabel, new Instr(Operator.METHODLABEL, reserveSpace, c.getParameters(), c.getName()));     
  }

  /* Crea las instrucciones para la inicializacion de las variables locales 
  	entre los espacios de memoria pasados como parametros */
  private void initLocalVar(int begin, int amount) {
  	int i = begin + 1;
  	while (i <= amount) { 
  		instructions.add(new Instr(Operator.INITLOCAL, "0", null,i * (-8)));
  		i++;	
  	}
  }

  /* Crea las instrucciones para la inicializacion de las variables globales */
  private void initGlobalVar(List<absSymbol> globals) {
  	for (absSymbol abs : globals) {
  		if (abs instanceof simpleSymbol)
  			instructions.add(new Instr(Operator.INITGLOBALVAR, "0", null, abs.getName()));
  		else
  			instructions.add(new Instr(Operator.INITGLOBALARRAY, "0", ((arraySymbol)abs).getSize(), abs.getName()));
  	}
  }

  /* Retorna las instrucciones generadas */
  public List<Instr> getInst() {
    return instructions;
  }

  /*-----------------------------------------------------------------------------------------------------------------------------------*/

  public Integer visit(IncrementAssign stmt)   {
    /* Genera instrucciones para la expresion*/
    Integer expr = stmt.getExpression().accept(this);    
    /* Label donde guardara el resultado */
    Integer result = genLabels.getOffSet();
    Location location = stmt.getLocation();

		/* Selecciona el incremento correcto segun el tipo */
		Operator plus;
		if (!(stmt.getExpression().getType() == Type.FLOAT)) 
			plus = Operator.PLUS;
		else 
 			plus = Operator.FPLUS;

	  if (!location.getIsGlobal()) {
	    /* Realiza la asigancion */
	    if (stmt.getLocation() instanceof VarLocation) {
	      /* Genera instrucciones para el Location*/
	      Integer loc = stmt.getLocation().accept(this);
	  		/* Realiza el incremento */
	  		instructions.add(new Instr(plus, expr, loc, result));
	      instructions.add(new Instr(Operator.VARASSIGN, result, null, loc));
	    }
	    else {
	      ArrayLocation a = (ArrayLocation) stmt.getLocation();
	      /* Realiza el incremento */
	  		instructions.add(new Instr(plus, expr, a.getOffSet(), result));
	      instructions.add(new Instr(Operator.ARRAYASSIGN, result, a.getExpression().accept(this), a.getOffSet()));
	    }
	  } else {
	    /* Realiza la asigancion */
	    if (stmt.getLocation() instanceof VarLocation) {
	    	/* Realiza el incremento */
	  		instructions.add(new Instr(plus, expr, location.accept(this), result));
	      instructions.add(new Instr(Operator.VARASSIGNGLOBAL, result, null, location.getId()));
	    }
	    else {
	    	/* Realiza el incremento */
	  		instructions.add(new Instr(plus, expr, location.accept(this), result));      	
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
		/* Selecciona el decremento correcto segun el tipo */
		Operator minus;
		if (!(stmt.getExpression().getType() == Type.FLOAT)) 
			minus = Operator.MINUS;
		else 
 			minus = Operator.FMINUS;

    if (!location.getIsGlobal()) {
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) {
        /* Genera instrucciones para el Location*/
        Integer loc = location.accept(this);
 	    /* Realiza el decremento */
    		instructions.add(new Instr(minus, expr, loc, result));
        instructions.add(new Instr(Operator.VARASSIGN, result, null, loc));
      }
      else {
        ArrayLocation a = (ArrayLocation) location;
    		/* Realiza el decremento */
    		instructions.add(new Instr(minus, expr, a.getOffSet(), result));      	        
        instructions.add(new Instr(Operator.ARRAYASSIGN, result, a.getExpression().accept(this), a.getOffSet()));
      }
    } else {
    	/* Realiza el decremento */
    	instructions.add(new Instr(minus, expr, location.accept(this), result));      	
      /* Realiza la asigancion */
      if (stmt.getLocation() instanceof VarLocation) 
        instructions.add(new Instr(Operator.VARASSIGNGLOBAL, result, null, location.getId()));
      else {
        ArrayLocation a = (ArrayLocation) location;
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
  	Expression expr = stmt.getExpression();
	  /* Genera instrucciones para la expresion */
	  if (expr != null) {
	    e = expr.accept(this);

      switch (expr.getType()) {
        case INT: case BOOLEAN:
  	    	instructions.add(new Instr(Operator.RETURN, null, null, e));
          break;
        case FLOAT:
	    	  instructions.add(new Instr(Operator.FRETURN, null, null, e));	  	
          break;
        default: 
          System.out.println("La expresion del return no tiene tipo asignado");
          break;
      }
	  } else 
  		instructions.add(new Instr(Operator.RETURN, null, null, null));	  
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
      Operator op = null;

      switch (a.getType()) {
        case FLOAT: 
          op = Operator.FPARAM;
          break;
        case INT: case BOOLEAN:
          op = Operator.PARAM;
          break;
        default: 
          System.out.println("Stmt: El parametro de la llamada interna no tiene tipo asignado");
          break;
      }

      if (i < 6)
      	param.add(new Instr(op, parameter, i, null));
      else 
      	param.add(new Instr(op, parameter, i, genLabels.getOffSet()));
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
      	parameter = ((ArgInvocExpr) a).getExpression().accept(this);

        switch (((ArgInvocExpr) a).getExpression().getType()) {
          case FLOAT:  
            param.add(new Instr(Operator.FPARAM, parameter, i, genLabels.getOffSet()));
            break;
          case INT: case BOOLEAN:
            param.add(new Instr(Operator.PARAM, parameter, i, genLabels.getOffSet()));
            break;
          default: 
            System.out.println("Stmt: El parametro de la llamada externa no tiene tipo asignado");
            break;
        }

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
 
    switch (expr.getType()) {
      case INT:
	  	  instructions.add(new Instr(Operator.UNARYMINUS, operand, null, result));
        break;
      case FLOAT:
  	  	String label = genLabels.getLabel();
  	  	instructions.add(0, new Instr(Operator.FLOAT, 0, "F"+label, null));
    		posMethodLabel ++;
  	  	instructions.add(new Instr(Operator.FUNARYMINUS, operand, "F"+label, result));
        break;
      default: 
        System.out.println("La expresion Negativa no tiene tipo asignado");
        break;

	  }
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

	  switch (expr.getLeftOperand().getType()) {
      case INT:
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
        break;
		  case FLOAT:
  	  	switch (operator) {
  			case LE:
  				op = Operator.FLE;
  				break;
  			case GE:
  				op = Operator.FGE;
  				break;
  			case GEQ:
  				op = Operator.FGEQ;
  				break;
  			case LEQ:
  				op = Operator.FLEQ;
  				break;
  		  }
        break;
      default: 
        System.out.println("El parametro de La expresion relacional no tiene tipo asignado");
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

    switch (expr.getType()) {
      case INT:
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
        break;
      case FLOAT:
  	  	switch (operator) {
    			case PLUS:
    				op = Operator.FPLUS;
    				break;
    			case MINUS:
    				op = Operator.FMINUS;
    				break;
    			case MULTIPLY:
    				op = Operator.FMULTIPLY;
    				break;
    			case DIVIDE:
    				op = Operator.FDIVIDE;
    				break;
    	 	}			
        break;
      default : 
        System.out.println("La expresion de aritmetica no tiene tipo asignado");
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
  		case AND : 	
        instructions.add(new Instr(Operator.AND, labels, operand, result));
  			break;
  		case OR : 	
        labels.add(genLabels.getLabel());
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
  	Operator op = null;

    switch (expr.getLeftOperand().getType()) {
      case INT: case BOOLEAN:
  	  	switch (operator) {
    			case CEQ:
    				op = Operator.CEQ;
    				break;
    			case NEQ:
    				op = Operator.NEQ;
    				break;
    	  }
        instructions.add(new Instr(op, leftOperand, rightOperand, result));
        break;
      case FLOAT:
        /* Operando 1 */
        String label1 = "F"+genLabels.getLabel(), label2 = "F"+genLabels.getLabel();
        instructions.add(0, new Instr(Operator.FLOAT, 1, label1, null));
        instructions.add(0, new Instr(Operator.FLOAT, 0, label2, null));
        posMethodLabel += 2;
        LinkedList<String> labelfloat = new LinkedList<String>();
        labelfloat.add(label1); labelfloat.add(label2);
        /* Operando 2 */
        label1 = genLabels.getLabel(); label2 = genLabels.getLabel();
        LinkedList<String> labels = new LinkedList<String>();
        labels.add(label1); labels.add(label2);
        /* Operando 3 */
        LinkedList<Integer> operands = new LinkedList<Integer>();
        operands.add(leftOperand); operands.add(rightOperand); operands.add(result);
  	  	switch (operator) {
    			case CEQ:
    				op = Operator.FCEQ;
    				break;
    			case NEQ:
            String label3 = genLabels.getLabel();
            labels.add(label3);
    				op = Operator.FNEQ;
    				break;
    	  }
        instructions.add(new Instr(op, labelfloat, labels, operands));
        break;
      default : 
        System.out.println("Los parametros de la expresion de equivalencia no tiene tipo asignado");
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
      Operator op = null;
      switch (a.getType()) {
        case FLOAT: 
      	  op = Operator.FPARAM;
          break;
        case INT: case BOOLEAN:
      	  op = Operator.PARAM;
          break;
        default: 
          System.out.println("expr: El parametro de la llamada interna no tiene tipo asignado");
          break;
      }
      if (i < 6)
      	param.add(new Instr(op, parameter, i, null));
      else 
      	param.add(new Instr(op, parameter, i, genLabels.getOffSet()));

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
				parameter = ((ArgInvocExpr) a).getExpression().accept(this);
        
        switch (((ArgInvocExpr) a).getExpression().getType()) {
          case FLOAT:  
            param.add(new Instr(Operator.FPARAM, parameter, i, genLabels.getOffSet()));
            break;
        	case INT: case BOOLEAN:
            param.add(new Instr(Operator.PARAM, parameter, i, genLabels.getOffSet()));
            break;
          default: 
            System.out.println("expr: El parametro de la llamada externa no tiene tipo asignado");
            break;
        }
      } else {
        String label = genLabels.getLabel();
        instructions.add(0, new Instr(Operator.STRING, a.toString(), "S"+label, null));
        posMethodLabel ++;
        param.add(new Instr(Operator.PARAM, "$.S"+label, i, genLabels.getOffSet()));        
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
    String label = genLabels.getLabel();
  	instructions.add(0, new Instr(Operator.FLOAT, lit, "F"+label, null));
  	posMethodLabel ++;
  	instructions.add(new Instr(Operator.ASSIGNFLOAT, "F"+label, null, result));
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
      Integer os = loc.getOffSet();
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
  	/* Este metodo no es llamado en caso que se le quiera asignar algo a un arreglo, 
  		solo se llama si se requiere el valor del mismo en algun indice */
    Integer expr = loc.getExpression().accept(this);
    Integer result = genLabels.getOffSet();
    if (!loc.getIsGlobal()) 
      instructions.add(new Instr(Operator.VALUEARRAY, loc.getOffSet(), expr, result));
    else 
      instructions.add(new Instr(Operator.GLOBALVALUEARRAY, loc.getId(), expr, result));
    return result;    
  }
}