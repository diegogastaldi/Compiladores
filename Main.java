package compiler2014;
import java.io.*;
import java.util.*;
import ir.semcheck.*;
import java_cup.runtime.*;
import ir.ast.Block;
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
        if (err.size() > 0)
                System.out.println(err.toString());    
    }
}
