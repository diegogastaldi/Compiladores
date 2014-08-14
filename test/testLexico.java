/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import compiladores.Lexer;
import compiladores.Tokens;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.junit.Assert.*;
import org.junit.Test;

/**
 *
 * @author Diego
 */
public class testLexico {

    @Test
    public void test1() throws FileNotFoundException {
        Reader reader = new BufferedReader(new FileReader("E:\\Universidad\\Cuarto Año\\Compiladores\\Compiladores\\test\\test1.txt"));
        Lexer lexer = new Lexer (reader);
        Tokens t;
        try { 
            /* Must recognize an identifier */
            t = lexer.yylex();
            assertTrue(t.compareTo(Tokens.ID)==0);

            /* Must recognize an assign */            
            t = lexer.yylex();
            assertTrue(t.compareTo(Tokens.ASSIGN)==0);
            
            /* Must recognize an identifier */
            t = lexer.yylex();
            assertTrue(t.compareTo(Tokens.ID)==0);
            
            /* Must recognize an plus */
            t = lexer.yylex();
            assertTrue(t.compareTo(Tokens.PLUS)==0);
            
            /* Must recognize an identifier */
            t = lexer.yylex();
            assertTrue(t.compareTo(Tokens.ID)==0);            
        } catch (IOException ex) {
            Logger.getLogger(testLexico.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Test
    public void test2() throws FileNotFoundException {
        Reader reader = new BufferedReader(new FileReader("E:\\Universidad\\Cuarto Año\\Compiladores\\Compiladores\\test\\test2.txt"));
        Lexer lexer = new Lexer (reader);
        Tokens t;
        try { 
            /* Must recognize a boolean */
            t = lexer.yylex();
            assertTrue(t.compareTo(Tokens.WBOOLEAN)==0);
            
        } catch (IOException ex) {
            Logger.getLogger(testLexico.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }
    
    @Test
    public void test3() throws FileNotFoundException {
        Reader reader = new BufferedReader(new FileReader("E:\\Universidad\\Cuarto Año\\Compiladores\\Compiladores\\test\\test3.txt"));
        Lexer lexer = new Lexer (reader);
        Tokens t;
        try { 
            /* Must recognize a error */
            t = lexer.yylex();
            assertTrue(t.compareTo(Tokens.ERROR)==0);
            
        } catch (IOException ex) {
            Logger.getLogger(testLexico.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }
    @Test
    public void test4() throws FileNotFoundException {
        Reader reader = new BufferedReader(new FileReader("E:\\Universidad\\Cuarto Año\\Compiladores\\Compiladores\\test\\test4.txt"));
        Lexer lexer = new Lexer (reader);
        Tokens t;
 //       try { 
            /*RECONOCER TODO LOS TOKENS DEL PROGRAMA*/
 //       } catch (IOException ex) {
 //           Logger.getLogger(testLexico.class.getName()).log(Level.SEVERE, null, ex);
 //       }

        
    }
    
}