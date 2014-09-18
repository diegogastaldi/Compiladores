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
            par.parse();

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
