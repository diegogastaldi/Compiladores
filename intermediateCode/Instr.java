/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************

  Clase que representa una instriccion 
  perteneciente al codigo intermedio. 
  Formada por tres operandos (el ultimo
  almacena el resultado) y un nombre de 
  tipo Operator
  
*/
package intermediateCode;
public class Instr {
	private Operator operator;
	private String operand1, operand2, result;

	public Instr() {
	}
    
    public Instr(Operator o, String o1, String o2, String r) {
    	operator = o;
    	operand1 = o1;
    	operand2 = o2;
    	result = r;
    }

    public Operator getOperator() {
    	return operator;
    }

    public String getOperand1(){
    	return operand1;
    } 

    public String getOperand2(){
    	return operand2;
    }     

    public String getResult() {
    	return result;
    }

    public String toString() {
        return operator.toString() + " " + operand1 + " " + operand2 + " " + result + "\n";
    }
}
    