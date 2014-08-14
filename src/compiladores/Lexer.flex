package compiladores;
import static compiladores.Tokens.*;
%%
%class Lexer
%type Tokens
L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r\n]
COMMENT1="/*" [^*/]* "*/"
COMMENT2="//"[^\n]*
%%
{WHITE} | {COMMENT1} | {COMMENT2} {/*Ignore*/}
"<"             {return LESS_THAN;}
">"             {return GREATER_THAN;}
"<="            {return LESS_EQ_THAN;}
">="            {return GREATER_EQ_THAN;}
"%"             {return MODULE;}
"!="            {return NOT_EQ;}
"!"             {return NOT;}
"("             {return LPAR;}
")"             {return RPAR;}
";"             {return END_EXP;}
"["             {return L;}
"]"             {return R;}
"{"             {return L;}
"}"             {return R;}
"=="            {return EQ;}
"||"            {return OR;}
"&&"            {return AND;}
"+="            {return ASSIGN_INC;}
"-="            {return ASSIGN_DEC;}
"="             {return ASSIGN;}
"+"             {return PLUS;}
"*"             {return MULT;}
"-"             {return MINUS;}
"/"             {return DIV;}
"boolean"       {return WBOOLEAN;}
"break"         {return WBREAK;}
"class"         {return WCLASS;}
"continue"      {return WCONTINUE;}
"else"          {return WELSE;}
"false"         {return WFALSE;}
"float"         {return WFLOAT;}
"for"           {return WFOR;}
"if"            {return WIF;}
"int"           {return WINT;}
"return"        {return WRETURN;}
"true"          {return WTRUE;}
"void"          {return WVOID;}
"while"         {return WWHILE;}
{L}({L}|{D})*   {return ID;}
-?{D}*          {return INT;}
.               {return ERROR;}