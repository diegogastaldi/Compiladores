/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase, como indica el nombre, es 
  la tabla de simbolos de compilador, aqui
  se almacenan los simbolos que tienen "vida"
  en un determinados lugares de los programas, 
  los cuales se agrupan en niveles teniendo
  en cuenta donde fueron declarados.
*/

package semanticAnalyzer;
import java.util.*;
import ir.ast.Type;

public class symbolTable{
    /*Tabla formadas por listas de simbolos, donde cada lista representa un nivel de declaracion*/
	LinkedList<LinkedList<absSymbol>> t;
	/*Cantidad de niveles*/
	int blockId;
	
	public symbolTable(){
		t = new LinkedList<LinkedList<absSymbol>>();
	    blockId = 0;
	}
	/*Inserta una lista de simbolos en el nivel actual*/
	public LinkedList<absSymbol> insertSymbolList(LinkedList<absSymbol> l) {
	    blockId = 0;
        for (int i = 0 ; (i < l.size()) ; i++) {
            if (insertSymbol(l.get(i)) == null)
                return null;
        }
        return l;
	}
	
	/*Retorna el numero del nivel actual*/
	public int getBlockId() {
	    return blockId;
	}

	/*Si contiene el simbolo en el nivel retorna null,
	en caso contrario retortna el simbolo creado*/
	public absSymbol insertSymbol(absSymbol s){
	  if (containsSymbol(s.name,0) != null)
	    return null;
	  else {
	    t.getFirst().push(s);		   
	    return s;
	  }
	}

	/*Empieza a buscar desde el nivel cero hasta el ultimo nivel, 
	si lo encuentra, lo retorna, caso contrario retorna null*/
	public absSymbol search(String name){
	    for (int i=0; i<t.size(); i++){
	        absSymbol aux_symbol = containsSymbol(name,i);
	        if (aux_symbol != null)
	            return aux_symbol;
        }
	    return null;
	}
    
	/*Crea un nuevo nivel*/
	public void insertLevel(){
	    blockId++;
	    LinkedList<absSymbol> newLevel = new LinkedList<absSymbol>();
	    t.addFirst(newLevel);
    }

    /*Elimina un nivel*/
    public void deleteLevel(){
        blockId--;
	    t.removeFirst();
	}
    /*Metodo que busca un simbolo con el nombre "name" en el nivel "level" y lo retorna*/
	private absSymbol containsSymbol(String name, Integer level){
	    Iterator<absSymbol> levelIt = t.get(level).iterator();
	    absSymbol s;
	    while (levelIt.hasNext()){
	        s = levelIt.next();
            if (s.name.equals(name))
                return s;	
        }
	    return null;
    }

}
