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

  public Labels() {
    temp = -8;
    param = 1;
    label = 0;
  }

	public String getLabel() {
		return "L"+(label++);
	}

  public int getOffSet() {
    temp -= 8;
    return temp;
  }  

  public int getOffSet(int space) {
    int result = temp - 8;
    temp -= (8 * space);
    return result;
  }  

  public int getNumParam() {
    temp -= 8;
    return param++;
  }  

  public void restart(int value) {
    temp = (-8) * (value + 1);
    param = 0;    
  }

  public void restart() {
    temp = -8;
    param = 0;
  }

} 
