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
	private Object operand1, operand2, result;

	public Instr() {
	}
    
    public Instr(Operator o, Object o1, Object o2, Object r) {
    	operator = o;
    	operand1 = o1;
    	operand2 = o2;
    	result = r;
    }

    public Operator getOperator() {
    	return operator;
    }

    public Object getOperand1(){
    	return operand1;
    } 

    public Object getOperand2(){
    	return operand2;
    }     

    public Object getResult() {
    	return result;
    }

    public String toString() {
        return operator.toString() + " " + operand1 + " " + operand2 + " " + result + "\n";
    }
}
    