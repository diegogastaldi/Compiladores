/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  lexer.flex identifica y crea los simbolos 
  de los archivos fuentes mediante expresiones 
  regulares
  
*/

package compiler2014;
import java_cup.runtime.Symbol;
import java.io.*;
%%
%class yylex
%public
%cup
%standalone
%line
%column
%state C_COMMENT
%{/*Crear un nuevo objeto java_cup.runtime.Symbol con información sobre el token actual sin valor*/
  private Symbol Symbol(int type){
    return new Symbol(type,yyline,yycolumn);
  }
  /* Crear un nuevo objeto java_cup.runtime.Symbol con información sobre el token actual con valor*/
  private Symbol Symbol(int type,Object value){
    return new Symbol(type,yyline,yycolumn,value);
  }
%}
L = [a-zA-Z_]

D = [0-9]

WHITE=[ \t\r\n]

COMMENT2="//"[^\n]*

%%
<YYINITIAL> {

{WHITE}			 	    {/*Ignore*/}
"/*"            		{ yybegin(C_COMMENT);}
{COMMENT2}			    {/*Ignore*/}
";"             		{return new Symbol(sym.SEMICOLON, yyline, yycolumn);}
","             		{return new Symbol(sym.COMMA, yyline, yycolumn);}
"<"             		{return new Symbol(sym.LESS_THAN, yyline, yycolumn);}
">"             		{return new Symbol(sym.GREATER_THAN, yyline, yycolumn);}
"<="            		{return new Symbol(sym.LESS_EQ_THAN, yyline, yycolumn);}
">="            		{return new Symbol(sym.GREATER_EQ_THAN, yyline, yycolumn);}
"%"             		{return new Symbol(sym.MODULE, yyline, yycolumn);}
"!="            		{return new Symbol(sym.NOT_EQ, yyline, yycolumn);}
"!"             		{return new Symbol(sym.NOT, yyline, yycolumn);}
"("             		{return new Symbol(sym.LPAR, yyline, yycolumn);}
")"             		{return new Symbol(sym.RPAR, yyline, yycolumn);}
"["             		{return new Symbol(sym.LC, yyline, yycolumn);}
"]"             		{return new Symbol(sym.RC, yyline, yycolumn);}
"{"             		{return new Symbol(sym.LLL, yyline, yycolumn);}
"}"             		{return new Symbol(sym.RLL, yyline, yycolumn);}
"=="            		{return new Symbol(sym.EQ, yyline, yycolumn);}
"||"            		{return new Symbol(sym.OR, yyline, yycolumn);}
"&&"            		{return new Symbol(sym.AND, yyline, yycolumn);}
"+="            		{return new Symbol(sym.ASSIGN_INC, yyline, yycolumn);}
"-="            		{return new Symbol(sym.ASSIGN_DEC, yyline, yycolumn);}
"="             		{return new Symbol(sym.ASSIGN, yyline, yycolumn);}
"+"             		{return new Symbol(sym.PLUS, yyline, yycolumn);}
"*"             		{return new Symbol(sym.MULT, yyline, yycolumn);}
"-"             		{return new Symbol(sym.MINUS, yyline, yycolumn);}
"/"             		{return new Symbol(sym.DIV, yyline, yycolumn);}
"boolean"       		{return new Symbol(sym.WBOOLEAN, yyline, yycolumn, new String(yytext()));}
"externinvk"       		{return new Symbol(sym.WEXTERNINVK, yyline, yycolumn, new String(yytext()));}
"break"         		{return new Symbol(sym.WBREAK, yyline, yycolumn, new String(yytext()));}
"class"         		{return new Symbol(sym.WCLASS, yyline, yycolumn, new String(yytext()));}
"continue"      		{return new Symbol(sym.WCONTINUE, yyline, yycolumn, new String(yytext()));}
"else"          		{return new Symbol(sym.WELSE, yyline, yycolumn, new String(yytext()));}
"false" | "true"  		{return new Symbol(sym.BOOLEAN, yyline, yycolumn, new Boolean(yytext()));}
"float"         		{return new Symbol(sym.WFLOAT, yyline, yycolumn, new String(yytext()));}
"for"           		{return new Symbol(sym.WFOR, yyline, yycolumn, new String(yytext()));}
"if"            		{return new Symbol(sym.WIF, yyline, yycolumn, new String(yytext()));}
"int"           		{return new Symbol(sym.WINT, yyline, yycolumn, new String(yytext()));}
{D}({D})*       		{return new Symbol(sym.INT, yyline, yycolumn, new Integer(yytext()));}
{D}({D})* ("." {D}({D})*)?  	{return new Symbol(sym.FLOAT, yyline, yycolumn, new Float(yytext()));}
"return"        		{return new Symbol(sym.WRETURN, yyline, yycolumn, new String(yytext()));}
"void"          		{return new Symbol(sym.WVOID, yyline, yycolumn, new String(yytext()));}
"while"         		{return new Symbol(sym.WWHILE, yyline, yycolumn, new String(yytext()));}
{L}({L}|{D}|_)*   		{return new Symbol(sym.ID, yyline, yycolumn, new String(yytext()));}
\"[^\"]*\"   			{return new Symbol(sym.STRING_LITERAL, yyline, yycolumn, yytext().substring(1,yytext().length()-1));}
.               		{System.err.println("Illegal character: "+ yytext()+ " linea: " + (yyline+1) + " columna: " + (yycolumn+1));}
}
<C_COMMENT>{
"*/" 				    { yybegin(YYINITIAL); }
.    				    { }			
}
