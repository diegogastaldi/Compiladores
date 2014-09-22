/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase prueba lo desarrollado hasta 
  el momento. Cargando un programa en ctds,
  y lo analiza tanto lexica, sintantica como
  semanticamente.
  
*/

package compiler2014;
import java.io.*;
import java.util.*;
import ir.semcheck.*;
import java_cup.runtime.*;
import ir.ast.Block;
import ir.ast.Type;
import error.Error;

public class Main {
    public static void main(String[] args){
        try {
            /* Loading the file*/
            FileInputStream file = new FileInputStream(args[0]);/**/
            /* Create lexer analizer with file*/
            yylex lex = new yylex(file);
            /* Create parser analyzer with lex*/  
            parser par = new parser(lex);
            /* Analize file */
            par.setScanner(lex);
            
            /* Chequeos lexicos y semanticos */
            par.parse();

            /* Chequeos semanticos */
            typeCheck(par.getAST());
            returnCheck(par.getAST());
            breakContinueCheck(par.getAST());
            methodInvocCheck(par.getAST());
            methodMainCheck(par.getAST());
        }catch(Exception x){
            x.printStackTrace();
            System.out.println("Error fatal.\n"); 
        }
    }
    
    /* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
    de tipos, si es que hay este tipo de errores */
    private static void typeCheck(LinkedList<completeFunction> ast) {
        TypeCheckVisitor typeCheckVisitor = new TypeCheckVisitor();

        for (completeFunction c: ast) {
            c.getBlock().accept(typeCheckVisitor);
        }
        if (typeCheckVisitor.getErrors().size() > 0) {
            System.out.println("------------ TYPE ERROR --------------");
            System.out.println(typeCheckVisitor.getErrors().toString());
        }    
    }
    
    /* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
    de retorno, tanto si no hay un return en cierto camino del programa, como si el tipo
    retornado es erroneo, si es que hay este tipo de errores */
    private static void returnCheck(LinkedList<completeFunction> ast) {
        ReturnTypeCheckVisitor returnTypeCheckVisitor = new ReturnTypeCheckVisitor();
        Block currentBlock;
        Boolean ret;
        LinkedList<Error> err = new LinkedList<Error>();
        for (completeFunction c: ast) {
            currentBlock = c.getBlock();
            returnTypeCheckVisitor = new ReturnTypeCheckVisitor(c.type);
            ret = currentBlock.accept(returnTypeCheckVisitor);
            if (!ret)
                err.add(new Error(currentBlock.getLineNumber(), currentBlock.getLineNumber(), "Error en el retorno del block"));
        }
        if (returnTypeCheckVisitor.getErrors().size() > 0) {
            System.out.println("------------RETURN ERROR ---------------");
            System.out.println(returnTypeCheckVisitor.getErrors().toString());
        }
        if (err.size() > 0) {
            if (returnTypeCheckVisitor.getErrors().size() == 0) 
                System.out.println("------------RETURN ERROR ---------------");
            System.out.println(err.toString());    
        }
    }
    
    /* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
    de ubicacion de las sentencias break y continue, si es que hay este tipo de errores */    
    private static void breakContinueCheck(LinkedList<completeFunction> ast) {
        BreakContCheckVisitor bcv = new BreakContCheckVisitor();
        for (completeFunction c: ast) {
            c.getBlock().accept(bcv);
        }        
        if (bcv.getErrors().size() > 0) {
            System.out.println("------------ BREAK CONTINUE ERROR --------------");
            System.out.println(bcv.getErrors().toString());
        }           
    }

    /* Toma el arbol de analisis sintatico y muestra por pantalla las lineas de los errores
    de invocacion a metodos que pueden tanto los tipos como la cantidad de los parametros en
    la invocacion, si es que hay este tipo de errores */    
    private static void methodInvocCheck(LinkedList<completeFunction> ast) {    
        MethodInvocCheckVisitor bcv = new MethodInvocCheckVisitor(ast);
        for (completeFunction c: ast) {
            c.getBlock().accept(bcv);
        }        
        if (bcv.getErrors().size() > 0) {
            System.out.println("------------ METHOD INVOC ERROR --------------");
            System.out.println(bcv.getErrors().toString());
        }           
    }    
    
    /* Toma el arbol de analisis sintatico y corrobora si hay un metodo que cumpla con las 
    caracteristicas del metodo principal para iniciar la ejecucion del programa */
    public static void methodMainCheck(LinkedList<completeFunction> ast) {
        Boolean find = false;
        for (completeFunction c : ast) {
            if (c.name.equals("main") && (c.parameters.size()==0) && (c.type == Type.VOID)) {
                find = true;
            }
        }
        if (!find) {
            System.out.println("------------MAIN METHOD ERROR --------------");
            System.out.println((new Error(0, 0, "La clase debe tener un metodo main sin parametros y de tipo void")).toString());            
        }
        
    }
}
