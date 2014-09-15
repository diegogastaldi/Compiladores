/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase representa los identificadores
  de tipo function declarados en el programa 
  que se esta compilando.
*/

package compiler2014;
import java.util.LinkedList;
import java.util.Iterator;
import ir.ast.Type;
public class functionSymbol extends absSymbol {
    /*Guarda los parametros de la funcion*/
    public LinkedList<absSymbol> parameters;

    public functionSymbol(String name, Type type, LinkedList<absSymbol> parameters){
		super(name, type);
		this.parameters = parameters;
	}

	public String toString(){
	  Iterator<absSymbol> it = parameters.iterator();
	  String string = new String();
	  int i = 0;
	  while (it.hasNext()) {
	    string = "parametro "+i+": "+it.next().toString();
	  }
    return super.toString() + (", parameters: "+string);
  }

} 
