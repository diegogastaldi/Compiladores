/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
  Esta clase representa las veriables de 
  tipos simples como son: int, float y 
  boolean.
*/

package semanticAnalyzer;
import ir.ast.Type;

public class simpleSymbol extends absSymbol{
  /*Almacena el valor de la variable*/
	private Object value;
	/* Posicion en la memoria con respecto al registro rbp de donde fue declarado */
  private Integer offset;
  /* Indica si el simbolo es global */
  private Boolean isGlobal;
  
	public simpleSymbol(String name, Object value, Type type, Integer offset, Boolean isGlobal){
	  super(name, type);
  	this.value = value;
    this.offset = offset;      
    this.isGlobal = isGlobal;
	}
  
	public String toString(){
	  String s = super.toString();
    return s + (", value: "+this.value);
  }

  public Object getValue() {
    return value;
  }

  public Integer getOffSet() {
    return offset;
  }

  public Boolean getIsGlobal() {
    return isGlobal;
  }

}
