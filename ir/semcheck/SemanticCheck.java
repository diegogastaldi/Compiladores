package ir.semcheck;

import java.util.List;
import java.util.LinkedList;
import semanticAnalyzer.*;
import ir.ast.Block;
import error.Error;
import ir.ast.Type;

public class SemanticCheck {
  private static Boolean hasErrors = false;

	public static Boolean runCheck (List<completeFunction> tree) {
		typeCheck(tree);
    returnCheck(tree);
    breakContinueCheck(tree);
    methodInvocCheck(tree);
    methodMainCheck(tree);

    return hasErrors;
	}

	/* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
  de tipos, si es que hay este tipo de errores */
  private static void typeCheck(List<completeFunction> ast) {
    TypeCheckVisitor typeCheckVisitor = new TypeCheckVisitor();

    for (completeFunction c: ast) {
      c.getBlock().accept(typeCheckVisitor);
    }
    if (typeCheckVisitor.getErrors().size() > 0) {
      System.out.println("------------ TYPE ERROR --------------");
      System.out.println(typeCheckVisitor.getErrors().toString());
      hasErrors = true;
    }    
  }
    
  /* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
  de retorno, tanto si no hay un return en cierto camino del programa, como si el tipo
  retornado es erroneo, si es que hay este tipo de errores */
  private static void returnCheck(List<completeFunction> ast) {
    ReturnTypeCheckVisitor returnTypeCheckVisitor = new ReturnTypeCheckVisitor();
    Block currentBlock;
    Boolean ret;
    List<Error> err = new LinkedList<Error>();
    for (completeFunction c: ast) {
      currentBlock = c.getBlock();
      returnTypeCheckVisitor = new ReturnTypeCheckVisitor(c.getType());
      ret = currentBlock.accept(returnTypeCheckVisitor);
      if (!ret)
        err.add(new Error(currentBlock.getLineNumber(), currentBlock.getLineNumber(), "Error en el retorno del block"));
    }
    if (returnTypeCheckVisitor.getErrors().size() > 0) {
      System.out.println("------------RETURN ERROR ---------------");
      System.out.println(returnTypeCheckVisitor.getErrors().toString());
      hasErrors = true;
    }
    if (err.size() > 0) {
      if (returnTypeCheckVisitor.getErrors().size() == 0) {
        System.out.println("------------RETURN ERROR ---------------");
        hasErrors = true;
      }
      System.out.println(err.toString());
    }
  }
    
  /* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
  de ubicacion de las sentencias break y continue, si es que hay este tipo de errores */    
  private static void breakContinueCheck(List<completeFunction> ast) {
    BreakContCheckVisitor bcv = new BreakContCheckVisitor();
    for (completeFunction c: ast) {
      c.getBlock().accept(bcv);
    }        
    if (bcv.getErrors().size() > 0) {
      System.out.println("------------ BREAK CONTINUE ERROR --------------");
      System.out.println(bcv.getErrors().toString());
      hasErrors = true;            
    }           
  }

  /* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
  de invocacion a metodos que pueden tanto los tipos como la cantidad de los parametros en
  la invocacion, si es que hay este tipo de errores */    
  private static void methodInvocCheck(List<completeFunction> ast) {    
    MethodInvocCheckVisitor bcv = new MethodInvocCheckVisitor(ast);
    for (completeFunction c: ast) {
      c.getBlock().accept(bcv);
    }        
    if (bcv.getErrors().size() > 0) {
      System.out.println("------------ METHOD INVOC ERROR --------------");
      System.out.println(bcv.getErrors().toString());
      hasErrors = true;            
    }           
  }    
    
  /* Toma el arbol de analisis sintatico y corrobora si hay un metodo que cumpla con las 
  caracteristicas del metodo principal para iniciar la ejecucion del programa */
  public static void methodMainCheck(List<completeFunction> ast) {
    Boolean find = false;
    for (completeFunction c : ast) {
      if (c.getName().equals("main") && (c.getParameters().size()==0) && (c.getType() == Type.VOID)) {
      	find = true;
      	break;
   		}
   	}
   	if (!find) {
     	System.out.println("------------MAIN METHOD ERROR --------------");
     	System.out.println((new Error(0, 0, "La clase debe tener un metodo main sin parametros y de tipo void")).toString());            
     	hasErrors = true;            
    }    
  }

}
