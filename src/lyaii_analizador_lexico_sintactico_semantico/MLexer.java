/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lyaii_analizador_lexico_sintactico_semantico;

import java.io.File;
import java.io.IOException;

/**
 *
 * @author ISC.JhonnatanGarcia
 */
public class MLexer {
    
     public static void main(String[] args) throws IOException {
        
        String path = "/Users/ISC.JhonnatanGarcia/NetBeansProjects/LYAII_Analizador_Lexico_Sintactico_Semantico/src/lyaii_analizador_lexico_sintactico_semantico/AnalizadorLex.lex";
        
        CrearLexer(path);
        
    }
    
    public static void CrearLexer(String path){
    
        File file = new File(path);
        
        jflex.Main.generate(file);
        
    }
    
    
}
