/* Taller de Diseño de Software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************

	Esta clase guarda la informacion necesaria
	para crear una variable global en assembler 
*/

package intermediateCode;

/* VER SI ES NECESARIO LA CREACION DE ESTA CLASE O SEGUIR USANDO 
		LOS SIMBOLOS */

public class Global {
	private String id;
	private int size;

	public Global (String id, int size) {
		this.id = id;
		this.size = size;
	}

	public String getId() {
		return id;
	}

	public int getSize(){
		return size;
	}
}