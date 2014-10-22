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
	INITGLOBALARRAY
	, INITGLOBALVAR
	, INITLOCAL
 	, CALLMETHOD /*Primer parametro: Nombre del metodo, 
 							 Segundo parametro: Cantidad de parametros, 
 							 Tercer parametro: Variable para resultado */
 	, PLUS, MINUS, MULTIPLY, DIVIDE, MOD /*Primer y segundo parametro: operando, 
 																				 Tercer parametro: variable para resultado */
 	, GE, LE, LEQ, GEQ, AND, OR, CEQ, NEQ /*Primer y Segundo parametro: operandos, 
 																					Tercer parametro: Variable para resultado */
 	, NOT, UNARYMINUS /* Primer parametro: operando
 						 					 Tercer parametro: Variable para resultado */
 	, LABEL	/* Tercer parametro: Nombre del label a crear */	
 	, METHODLABEL /* Tercer parametro: Nombre del label a crear */	
 	, JLE, JNE /* Tercer parametro: Label a saltar */
 	, RETURN /* Tercer parametro: Variable con valor a retornar */
 	, PARAM /* Tercer parametro: Variable con valor del parametro */
 	, CMP /* Primer parametro: valor a comparar (direccion)
 				 	 Segundo parametro: valor a comparar (direccion)*/
 	, JMP  /* Tercer parametro: Label a saltar */
 	, CONST /* Primer parametro: Valor constante, 
 				  	 Tercer parametro: variable con dicho valor */
 	, ARRAYASSIGN /* Primer parametros: direccion del valor a asignar
 								 Segundo parametro: indice en el arreglo a asignar
 								 Tercer parametro: direccion del primer elemento del arreglo*/
 	, VARASSIGN 
 	, TEXT			/* Tercer parametro: texto a escribir en el codigo*/
 	, STRING 		/* Primer parametro: string a definir
 								 Segundo parametro: Label para definir el string*/
 	, GLOBAL		/* Primer parametro: Nombre de la variable global 
 								 Segundo parametro: tamaño de la varibale global*/
 	, VARASSIGNGLOBAL /* Primer parametro: valor a asignar 
 											 Tercer parametro: variable global a asignar*/
 	, ARRAYASSIGNGLOBAL /* Primer parametro: valor a asignar 
 												 Segundo parametro: arreglo a asignar*/
 	, GLOBALVALUEVAR	/* Primer parametro: id de la variable global
 											 Segundo parametro: variable a asignar */
 	, GLOBALVALUEARRAY /* Primer parametro: id de la arreglo global
 											 Segundo parametro: variable a asignar */
 	, VALUEARRAY;
	@Override
	public String toString() {
		switch(this) {
			case INITGLOBALARRAY:
				return "INITGLOBALARRAY";
			case INITGLOBALVAR:
				return "INITGLOBALVAR";
			case INITLOCAL:
				return"INITLOCAL";			
			case VALUEARRAY:
				return"VALUEARRAY";
			case GLOBALVALUEARRAY:
				return"GLOBALVALUEARRAY";
			case GLOBALVALUEVAR:
				return"GLOBALVALUEVAR";				
			case VARASSIGNGLOBAL:
				return "VARASSIGNGLOBAL";
			case ARRAYASSIGNGLOBAL:
				return "ARRAYASSIGNGLOBAL";				
			case GLOBAL:
				return "GLOBAL";
			case STRING:
				return "STRING";			
			case ARRAYASSIGN:
				return "ARRAYASSIGN";
			case VARASSIGN:
				return "VARASSIGN";				
			case TEXT:
				return "TEXT";
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