/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  

*/

package compiler2014;
import ir.ast.Block;
import ir.ast.Type;
import java.util.LinkedList;
public class completeFunction extends functionSymbol {
    private Block block;

    public completeFunction(String name, Type type, LinkedList<absSymbol> parameters, Block b){
		super(name, type, parameters);
        block = b;
	}

    public completeFunction(functionSymbol f, Block b){
       super(f.name, f.type, f.parameters);
       block = b;
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

}  