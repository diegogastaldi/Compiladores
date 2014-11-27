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
public class CompleteFunction extends FunctionSymbol {
  private Block block;
  /* Cantidad de variables locales de la funcion */
  private Integer localVars;

  public CompleteFunction(String name, Type type, LinkedList<AbsSymbol> parameters, Block b, int localVars){
  	super(name, type, parameters);
    block = b;
    this.localVars = localVars;
	}
  public CompleteFunction(FunctionSymbol f, Block b, int localVars){
    super(f.getName(), f.getType(), f.getParameters());
    block = b;
    this.localVars = localVars;
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

  public Integer getLocalVars() {
    return localVars;
  }

}  