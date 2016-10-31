/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lyaii_analizador_lexico_sintactico_semantico;

/**
 *
 * @author ISC.JhonnatanGarcia
 */
public class MCup {
    
    public static void main(String[] args){
    
        String opc[] = new String[5];
        //Direccion Destino
        opc[0] = "-destdir";
        //Ingresamos La Direccion
        opc[1] = "/Users/ISC.JhonnatanGarcia/NetBeansProjects/LYAII_Analizador_Lexico_Sintactico_Semantico/src/lyaii_analizador_lexico_sintactico_semantico";
        //Opcion De Nombre Del Archivo
        opc[2] = "-parser";
        //Nombramos El Archivo
        opc[3] = "parser";
        //Direccionamos Al Archivo CUP
        opc[4] = "/Users/ISC.JhonnatanGarcia/NetBeansProjects/LYAII_Analizador_Lexico_Sintactico_Semantico/src/lyaii_analizador_lexico_sintactico_semantico/AnalizadorCup.cup";
        
        try {
            
            java_cup.Main.main(opc);
            
        } catch (Exception ex) {
            
            System.out.println(ex);
            
        }
        
        
    }
    
}
