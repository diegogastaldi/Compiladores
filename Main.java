package compiler2014;
import java.io.*;
import java.util.*;
import ir.semcheck.TypeCheckVisitor;
import java_cup.runtime.*;
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

            TypeCheckVisitor typeCheckVisitor = new TypeCheckVisitor();
            LinkedList<completeFunction> ast = par.getAST();
            System.out.println(ast.toString());
            for (completeFunction c: ast) {
                c.getBlock().accept(typeCheckVisitor);
            }

            System.out.println(typeCheckVisitor.getErrors().toString());

        }catch(Exception x){
            x.printStackTrace();
            System.out.println("Error fatal.\n"); 
        }
    }
}