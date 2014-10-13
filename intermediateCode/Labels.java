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
  private int temp;
  /* Posicion base para definir las variables locales */
  public int globalParam;
  /* Indica si ya se cargaron las variables globales */
  private int param;
  private boolean global;

  public Labels() {
    temp = 0;
    param = 0;
    label = 0;
    global = false;
  }

	public String getLabel() {
		return ""+(label++);
	}

  public int getOffSet() {
    temp -= 4;
    return temp;
  }  

  public int getOffSet(int space) {
    int result = temp - 4;
    temp -= (4 * space);
    return result;
  }  

  public int getNumParam() {
    temp -= 4;
    return param++;
  }  

  public void restart(int value) {
    temp = (-4) * value;
    param = 0;    
  }

  public void restart() {
    temp = 0;
    param = 0;
  }

} 
