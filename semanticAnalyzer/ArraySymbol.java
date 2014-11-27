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

package semanticAnalyzer;
import java.util.LinkedList;
import ir.ast.Type;
public class ArraySymbol extends AbsSymbol {
	/*Tamaño del arreglo*/
	private Integer size;
	/*Valores de las distintas posiciones del arreglo*/
	private LinkedList<Object> values;
	/* Posicion del primer elemento del arreglo con respecto al registro rbp donde fue declarado */
	private Integer offset;
	/* Indica si el simbolo es global */
	private Boolean isGlobal;

	public ArraySymbol(String name, Type type, Integer size, LinkedList<Object> values, Integer offset, Boolean isGlobal){
		super(name, type);
		this.size = size;
		this.values = values;
		this.offset = offset;
		this.isGlobal = isGlobal;
	} 

	public Integer getSize() {
		return size;
	}

	public LinkedList<Object> getValues() {
			return values;
	}

	public String toString() {
			return super.toString() + (", size: "+this.size) + (", values: "+values.toString());
	}

	public Integer getOffSet() {
		return offset;
	}

  public Boolean getIsGlobal() {
    return isGlobal;
  }
} 


