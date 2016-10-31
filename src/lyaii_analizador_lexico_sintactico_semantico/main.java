
package lyaii_analizador_lexico_sintactico_semantico;
import java.io.*;
import javax.swing.JOptionPane;


/**
 *
 * @author ISC.JhonnatanGarcia
 */
public class main {

    
    public static void main(String[] args) throws Exception{
        
        
        //{: System.out.println("Analisis Sintactico Realizado Correctamente.!"); :}
        try {
            
        Reader reader = new BufferedReader(new FileReader("/Users/ISC.JhonnatanGarcia/NetBeansProjects/LYAII_Analizador_Lexico_Sintactico_Semantico/src/lyaii_analizador_lexico_sintactico_semantico/codigoFuente.txt"));
        Yylex lexer = new Yylex(reader);
        parser p = new parser(lexer);
        p.parse();
            
            
        } catch (Exception ex) {
            
            System.out.println("Error: " + ex.getMessage());
            
        }
        
    }
    }
