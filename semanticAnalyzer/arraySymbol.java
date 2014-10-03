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
public class arraySymbol extends absSymbol {
	/*Tamaño del arreglo*/
	private Integer size;
	/*Valores de las distintas posiciones del arreglo*/
	private LinkedList<Object> values;
	private Integer offset;

	public arraySymbol(String name, Type type, Integer size, LinkedList<Object> values, Integer offset){
		super(name, type);
		this.size = size;
		this.values = values;
		this.offset = offset;
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

} 


