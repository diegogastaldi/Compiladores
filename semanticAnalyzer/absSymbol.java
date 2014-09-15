/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  Clase abstracta para los disitntos
  tipos de identificadores
*/

package compiler2014;
import ir.ast.Type;
public abstract class absSymbol {
    public String name;
    public Type type;
  
    public absSymbol (String name, Type type) {
        this.name = name;
        this.type = type;
    }
  
    public String toString(){
       return ("name: "+name) + (", type: "+type.toString()+";");
    }

} 
