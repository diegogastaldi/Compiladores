/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Clase para testear el analisis sintactico
  y lexico del archivo que se le pasa como 
  parametro
  
*/


package compiler2014;
import java.io.*;
public class main {
  public static void main (String [] args) {
    try {
      /* Loading the file*/
      FileInputStream file = new FileInputStream(args[0]);/**/
      /* Create lexer analizer with file*/
      yylex lex = new yylex(file);
      /* Create parser analyzer with lex*/  
      parser par = new parser(lex);
      /* Analize file */
      par.parse();
    } catch (Exception e) {
      System.out.println(e);
    }
    
  }
}
