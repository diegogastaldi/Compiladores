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
  /* Espacio necesario para las variables locales */
  private int local;
  public completeFunction(String name, Type type, LinkedList<absSymbol> parameters, Block b, int reserve){
  	super(name, type, parameters);
    block = b;
    local = reserve;
	}
  public completeFunction(functionSymbol f, Block b, int reserve){
    super(f.getName(), f.getType(), f.getParameters());
    block = b;
    local = reserve;
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
  public int getReserve() {
    return local;
  }

}  



