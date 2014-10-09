/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************

  Clase que almacena un entero y a partir
  de este genera un string distinto cada vez
  que se llama a su unico metodo.
  
*/

package intermediateCode;
public class Labels {
	/* Modificador para label */
	private int l;
	/* Modificador para variables */	
  public int temp;
  /* Posicion base para definir las variables locales */
  public int globalParam;
  /* Indica si ya se cargaron las variables globales */
  private boolean global;

  public Labels() {
    temp = 0;
    l = 0;
    globalParam = 0;
    global = false;
  }

	public String getLabel() {
		return ""+(++l);
	}

  public void restartGlobal () {
    if (!global) {
      globalParam = temp;
      global = true;
    } else       
      temp = globalParam;
  }

  public void restart(int value) {
    temp = - value;
  }

  public int getOffSet() {
    temp -= 4;
    return temp;
  }  

  public int getOffSet(int space) {
    temp -= 4;
    int r = temp;
    temp -= 4 * (space - 1);
    return r;
  }  
} 
