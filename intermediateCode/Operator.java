/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************

  Operator es un tipo enumerado que contiene
  los nombres de las operaciones que estan 
  permitidas en el codigo intermedio 
  generado por el compilador.

*/

package intermediateCode;
public enum Operator {
 	CALLINTMETHOD /*Primer parametro: Nombre del metodo, 
 					Segundo parametro: Cantidad de parametros, 
 					Tercer parametro: Variable para resultado */
 	, ARRAYINDEX  /*Primer parametro: Nombre del arreglo, 
 					Segundo parametro: indice, 
 					Tercer parametro: Variable para resultado */
 	, PLUS, MINUS, MULTIPLY, DIVIDE, MOD
 	, GE, LE, LEQ, GEQ, AND, OR, CEQ, NEQ/*Primer y Segundo parametro: operandos, 
 											Tercer parametro: Variable para resultado */

 	, NOT, UNARYMINUS /* Primer parametro: operando
 						 Tercer parametro: Variable para resultado */
 	, ASSIGN	  /* Primer parametro: Valor a asignar
 					 Tercer parametro: Variable a ser asignada */
 	, LABEL		  /* Tercer parametro: Nombre del label a crear */	
 	, CALLEXTMETHOD
 	, JNL, JNE	  /* Tercer parametro: Label a saltar */
 	, RETURN 	  /* Tercer parametro: Variable con valor a retornar */
 	, PARAM 	  /* Tercer parametro: Variable con valor del parametro */
 	, CMP 		  /* Primer parametro: valor a comparar
 					 Segundo parametro: valor a comparar*/
 	, JMP 		  /* Tercer parametro: Label a saltar */
	, VAR;	
	@Override
	public String toString() {
		switch(this) {
			case CALLINTMETHOD:
				return "CALLINTMETHOD";
			case ARRAYINDEX:
				return "ARRAYINDEX";
			case VAR:
				return "VAR";
			case PLUS:
				return "PLUS";
			case MINUS:
				return "MINUS";
		    case MULTIPLY:
		        return "MULTIPLY";
		    case DIVIDE:
		        return "DIVIDE";
		    case MOD:
		        return "MOD";
		    case LE:
		        return "LE";
		    case LEQ:
		        return "LEQ";
		    case GE:
		        return "GE";
		    case GEQ:
		        return "GEQ";
		    case NOT:
		        return "NOT";
			case UNARYMINUS:
		        return "UNARYMINUS";
		    case AND:
		        return "AND";
		    case CEQ:
		        return "CEQ";
		    case NEQ:
		        return "NEQ";
			case ASSIGN:
		        return "ASSIGN";
		    case LABEL:
		    	return "LABEL";
		    case CALLEXTMETHOD:
		    	return "CALLEXTMETHOD";
		    case CMP:
		    	return "CMP";
		    case JMP:
		    	return "JMP";
		    case JNL: 
		    	return "JNL";
		    case JNE:
		    	return "JNE";
		    case RETURN:
		    	return "RETURN";
		    case PARAM:
		    	return "PARAM";
		}
		return null;
	}

}