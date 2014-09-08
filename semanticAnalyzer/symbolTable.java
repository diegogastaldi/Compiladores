package compiler2014;
import java.util.*;

public class symbolTable{
	LinkedList<LinkedList<absSymbol>> t;
	
	public symbolTable(){
		t = new LinkedList<LinkedList<absSymbol>>();
	}
	
	public LinkedList<absSymbol> insertSymbolList(LinkedList<absSymbol> l) {
        for (int i = 0 ; (i < l.size()) && insertSymbol(l.get(i))!=null ; i++) {
        }
        if (i < l.size())
            return null;
        else
            return l;
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
	public absSymbol search(absSymbol s){
	  for (int i=0; i<t.size(); i++){
	    absSymbol aux_symbol = containsSymbol(s.name,i);
	    if (aux_symbol != null)
	      return aux_symbol;
    }
	  return null;
	}
    
	/*Crea un nuevo nivel*/
	public void insertLevel(){
	  LinkedList<absSymbol> newLevel = new LinkedList<absSymbol>();
	  t.addFirst(newLevel);
  }

  /*Elimina un nivel*/
  public void deleteLevel(){
	  t.removeFirst();
	}

	public void print(){
    Iterator<LinkedList<absSymbol>> levelIt = t.iterator();
    Iterator<absSymbol> symbolIt;
    absSymbol s;
	  while (levelIt.hasNext()){
	    symbolIt = levelIt.next().iterator();
	    while(symbolIt.hasNext()){
	      s = symbolIt.next();
	      if (s.type == null) 
	        System.out.print(s.name+"u: undefined; ");
	      else 
	        System.out.println(s.toString());
	    }
	  }	
	}

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
