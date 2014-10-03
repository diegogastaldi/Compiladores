/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  Clase abstracta para los disitntos
  tipos de identificadores
*/

package semanticAnalyzer;
import ir.ast.Type;
public abstract class absSymbol {
	private String name;
	private Type type;

	public absSymbol(String name, Type type) {
		this.name = name;
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type t) {
		type = t;
	}	
} 
