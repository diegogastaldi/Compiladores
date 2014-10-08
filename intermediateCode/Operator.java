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
 	CALLMETHOD /*Primer parametro: Nombre del metodo, 
 					Segundo parametro: Cantidad de parametros, 
 					Tercer parametro: Variable para resultado */
 	, PLUS, MINUS, MULTIPLY, DIVIDE, MOD /*Primer y segundo parametro: operando, 
 											Tercer parametro: variable para resultado */
 	, GE, LE, LEQ, GEQ, AND, OR, CEQ, NEQ/*Primer y Segundo parametro: operandos, 
 											Tercer parametro: Variable para resultado */
 	, NOT, UNARYMINUS /* Primer parametro: operando
 						 Tercer parametro: Variable para resultado */
 	, ASSIGN	  /* Primer parametro: Valor a asignar
 					 Tercer parametro: Variable a ser asignada */
 	, LABEL		  /* Tercer parametro: Nombre del label a crear */	
 	, METHODLABEL /* Tercer parametro: Nombre del label a crear */	
 	, JLE, JNE	  /* Tercer parametro: Label a saltar */
 	, RETURN 	  /* Tercer parametro: Variable con valor a retornar */
 	, PARAM 	  /* Tercer parametro: Variable con valor del parametro */
 	, CMP 		  /* Primer parametro: valor a comparar (direccion)
 					 Segundo parametro: valor a comparar (direccion)*/
 	, JMP 		  /* Tercer parametro: Label a saltar */
 	, CONST       /* Primer parametro: Valor constante, 
 				  	 Tercer parametro: variable con dicho valor */;
	@Override
	public String toString() {
		switch(this) {
			case CONST:
				return "CONST";
			case CALLMETHOD:
				return "CALLMETHOD";
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
		    case OR:
		    	return "OR";
		    case CEQ:
		        return "CEQ";
		    case NEQ:
		        return "NEQ";
			case ASSIGN:
		        return "ASSIGN";
		    case LABEL:
		    	return "LABEL";
		    case METHODLABEL:
		    	return "METHODLABEL";		    	
		    case CMP:
		    	return "CMP";
		    case JMP:
		    	return "JMP";
		    case JLE: 
		    	return "JLE";
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