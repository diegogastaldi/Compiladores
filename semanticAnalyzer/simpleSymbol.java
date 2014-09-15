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

package compiler2014;
import ir.ast.Type;

public class simpleSymbol extends absSymbol{
    /*Almacena el valor de la variable*/
	public Object value;

	public simpleSymbol(String name, Object value, Type type){
	  super(name, type);
		this.value = value;
	}

	public String toString(){
	  String s = super.toString();
    return s + (", value: "+this.value);
  }
}
