/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase representa una funcion completa, 
  la cual mentiene la informacion de tipo, nombre,
  parametros y el bloque correspondiente a dicha 
  funcion.
*/

package semanticAnalyzer;
import ir.ast.Block;
import ir.ast.Type;
import java.util.LinkedList;
public class completeFunction extends functionSymbol {
    private Block block;
    private int offset;

    public completeFunction(String name, Type type, LinkedList<absSymbol> parameters, Block b, int os){
	     	super(name, type, parameters);
        block = b;
        offset = os;
  	}

    public completeFunction(functionSymbol f, Block b, int os){
       super(f.getName(), f.getType(), f.getParameters());
       block = b;
       offset = os;
    }

    public void setBlock (Block b) {
        block = b;
    }
    
    public Block getBlock() {
        return block;
    }
    
	  public String toString(){
        return super.toString() + " , Block: " + block.toString();
    }

    public int getOffSet() {
      return offset;
    }

}  
