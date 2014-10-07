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
	private int l;
  private int m;
  private int p;

  public Labels() {
    m = 0;
    l = 0;
    p = 0;
  }

	public String getLabel() {
		return "L"+(++l);
	}

  public void restart(int begin) {
    m = begin + 4;
    p = 0;
  }

  public int getOffSet() {
    m-=4;
    return m;
  }  

  public int getOffSetParam() {
    p+=4;
    return p;
  }  

  public void restartParam() {
    p = 0;
  }
} 
