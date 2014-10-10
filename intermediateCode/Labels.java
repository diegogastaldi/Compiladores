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
	private int label;
	/* Modificador para variables */	
  public int temp;
  /* Posicion base para definir las variables locales */
  public int globalParam;
  /* Indica si ya se cargaron las variables globales */
  private int param;
  private boolean global;

  public Labels() {
    temp = 0;
    param = 0;
    label = 0;
    globalParam = 0;
    global = false;
  }

	public String getLabel() {
		return ""+(label++);
	}

  public int getOffSet() {
    int result = temp;
    temp -= 4;
    return result;
  }  

  public int getOffSet(int space) {
    int result = temp;
    temp -= (4 * space);
    return result;
  }  

  public int getOffSetParam() {
    int result = param;
    param += 4;
    return result;
  }  

  public void restartGlobal () {
    if (!global) {
      globalParam = temp;
      global = true;
    } else       
      temp = globalParam;
    param = 0;
  }

  public void restart(int value) {
    temp = - value;
  }

} 
