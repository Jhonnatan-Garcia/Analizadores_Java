package lyaii_analizador_lexico_sintactico_semantico;
import java_cup.runtime.Symbol;
import java.*;


%%
%cup
%full
%line
%char
%ignorecase
%eofval{
    return new Symbol(sym.EOF, new String("Fin Del Archivo Analizado"));
%eofval}


digito = [0-9]
letra = [a-zA-z]
id = {letra}({letra}|{digito})*
espacio = \t|\f|" "|\r|\n

%%

"#"           {System.out.println("Token: #"); return new Symbol(sym.NUMERAL, yychar, yyline, yytext());}
"="           {System.out.println("Token: ="); return new Symbol(sym.ASIGNACION, yychar, yyline, yytext());}
"include"     {System.out.println("Token: include"); return new Symbol(sym.INCLUDE, yychar, yyline, yytext());}
"<"           {System.out.println("Token: <"); return new Symbol(sym.MENOR_QUE, yychar, yyline, yytext());}
"stdio.h"     {System.out.println("Token: stdio.h"); return new Symbol(sym.LIBRERIA_IO, yychar, yyline, yytext());}
"stdlib.h"    {System.out.println("Token: stdlib.h"); return new Symbol(sym.LIBRERIA_DLIB, yychar, yyline, yytext());}
">"           {System.out.println("Token: >"); return new Symbol(sym.MAYOR_QUE, yychar, yyline, yytext());}
"using namespace std"     {System.out.println("Token: using namespace std"); return new Symbol(sym.STD, yychar, yyline, yytext());}
";"           {System.out.println("Token: ;"); return new Symbol(sym.PYC, yychar, yyline, yytext());}
"int"         {System.out.println("Token: int"); return new Symbol(sym.INT, yychar, yyline, yytext());}
"main"        {System.out.println("Token: main"); return new Symbol(sym.MAIN, yychar, yyline, yytext());}
"("           {System.out.println("Token: ("); return new Symbol(sym.ABRIR_P, yychar, yyline, yytext());}
")"           {System.out.println("Token: )"); return new Symbol(sym.CERRAR_P, yychar, yyline, yytext());}
"{"           {System.out.println("Token: {"); return new Symbol(sym.ABRIR_LL, yychar, yyline, yytext());}
"}"           {System.out.println("Token: }"); return new Symbol(sym.CERRAR_LL, yychar, yyline, yytext());}
"cout"        {System.out.println("Token: cout"); return new Symbol(sym.COUT, yychar, yyline, yytext());}
"endl"        {System.out.println("Token: endl"); return new Symbol(sym.ENDL, yychar, yyline, yytext());}
"return"     {System.out.println("Token: return"); return new Symbol(sym.RETURN, yychar, yyline, yytext());}
{id}         {System.out.println("Token: id"); return new Symbol(sym.IDENTIFICADOR, yychar, yyline, yytext());}
{digito}+     {System.out.println("Token: digito"); return new Symbol(sym.NUMERO, yychar, yyline, new Integer(yytext()));}
{espacio}    {} 
.            { System.out.println("Error, Caracter Ilegal: " + yytext()); }