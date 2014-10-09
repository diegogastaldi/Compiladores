/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase representa un simbolo de tipo funcion, 
  la cual mantiene la informacion de tipo, nombre y
  parametros de la misma.
*/

package semanticAnalyzer;
import java.util.LinkedList;
import java.util.Iterator;
import ir.ast.Type;
public class functionSymbol extends absSymbol {
	/* Parametros de la funcion */
  private LinkedList<absSymbol> parameters;

  public functionSymbol(String name, Type type, LinkedList<absSymbol> parameters){
		super(name, type);
		this.parameters = parameters;
	}

	public String toString(){
	    Iterator<absSymbol> it = parameters.iterator();
	    String string = new String();
	    int i = 1;
	    while (it.hasNext()) {
	        string = "parametro "+i+": "+it.next().toString();
	        i++;
	    }
        return super.toString() + (", parameters: "+string);
    }

    public LinkedList<absSymbol> getParameters() {
    	return parameters;
    }

    public void setParameters(LinkedList<absSymbol> p) {
    	parameters = p;
    }
} 
