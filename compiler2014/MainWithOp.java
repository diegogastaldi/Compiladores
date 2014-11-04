/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase ejecuta el compilador con 
  opimizaciones. Cargando un programa en ctds,
  y lo analiza tanto lexica, sintantica como
  semanticamente.
  
*/

package compiler2014;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.util.*;
import ir.semcheck.SemanticCheck;
import java_cup.runtime.*;
import intermediateCode.*;
import semanticAnalyzer.*;
import syntaxAnalyzer.*;
import lexAnalyzer.*;
import assemblyCode.genAssemblyCode;
import optimization.*;

public class MainWithOp {

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
      Boolean hasErrors = SemanticCheck.runCheck(par.getAST());
      /* Genera el codigo intermedio solo si el coddigo fuente no tiene errores */
      if (!hasErrors) {
        /* Optimization */
        ConstValue cv = new ConstValue();
        DeadCode dc = new DeadCode();
        List<completeFunction> op1 = cv.optimize(par.getAST());
        List<completeFunction> op2 = dc.optimize(op1);
        /* Genera codigo intermedio */
        List<Instr> ic = instCodeGen(op2, par.getGlobals());

        String assembly = genAssemblyCode.gACode(ic);
		    /* Archivo donde se guarda el codigo assembler */
    		FileWriter fw=new FileWriter(args[0]+".s");
        fw.write(assembly);
        fw.close();
    	}              
    }catch(Exception x){
      x.printStackTrace();
      System.out.println("Error fatal.\n"); 
    }
  }
    
  /* A partir del arbol sintactico genera el codigo intermedio y lo retorna */
  public static List<Instr> instCodeGen(List<completeFunction> ast, List<absSymbol> globals) {
    InstCodeGenVisitor icg = new InstCodeGenVisitor();

    icg.globalVar(globals);

    for (completeFunction c : ast) {
      if (c.getName().equals("main"))
        /* Si la funcion es main, inicializa las vars globales */
        icg.blockCode(c, globals);
      else
        icg.blockCode(c);
    }
    return icg.getInst();
  }
} 
