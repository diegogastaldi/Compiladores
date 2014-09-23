/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  Esta clase almacena los identificadores 
  de tipo array declarados en el programa
  que se esta compilando.  
*/

package compiler2014;
import java.util.LinkedList;
import ir.ast.Type;
public class arraySymbol extends absSymbol {
    /*Tamaño del arreglo*/
    public Integer size;
    /*Valores de las distintas posiciones del arreglo*/
    public LinkedList<Object> values;
  
 	  public arraySymbol(String name, Type type, Integer size, LinkedList<Object> values){
 	      super(name, type);
		    this.size = size;
		    this.values = values;
	  } 

    public String toString(){
        return super.toString() + (", size: "+this.size) + (", values: "+values.toString());
    }

} 


