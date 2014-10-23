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
 	, VALUEARRAY 							 
 	, NOT /* Primer parametro: operando
 						 					 Tercer parametro: Variable para resultado */
 	, LABEL	/* Tercer parametro: Nombre del label a crear */	
 	, METHODLABEL /* Tercer parametro: Nombre del label a crear */	
 	, JLE, JNE /* Tercer parametro: Label a saltar */
 	, JMP  /* Tercer parametro: Label a saltar */
 	, TEXT			/* Tercer parametro: texto a escribir en el codigo*/
 	, STRING 		/* Primer parametro: string a definir
 								 Segundo parametro: Label para definir el string*/
 	, GLOBALVALUEARRAY /* Primer parametro: id de la arreglo global
 											 Segundo parametro: variable a asignar */ 				
 	, GLOBALVALUEVAR	/* Primer parametro: id de la variable global
 											 Segundo parametro: variable a asignar */ 		
 	, VARASSIGNGLOBAL /* Primer parametro: valor a asignar 
 											 Tercer parametro: variable global a asignar*/
 	, ARRAYASSIGNGLOBAL /* Primer parametro: valor a asignar 
 												 Segundo parametro: arreglo a asignar*/									 				 
 	, GLOBAL		/* Primer parametro: Nombre de la variable global 
 								 Segundo parametro: tamaño de la varibale global*/
 	, ARRAYASSIGN /* Primer parametros: direccion del valor a asignar
 								 Segundo parametro: indice en el arreglo a asignar
 								 Tercer parametro: direccion del primer elemento del arreglo*/
 	, VARASSIGN 
 	, CONST /* Primer parametro: Valor constante, 
 				  	 Tercer parametro: variable con dicho valor */ 	
 	, CMP /* Primer parametro: valor a comparar (direccion)
 				 	 Segundo parametro: valor a comparar (direccion)*/
 				 	 
 	/* Instrucciones para float */
 	, FPARAM
 	, FRETURN /* Tercer parametro: Variable con valor a retornar */ 	
 	, FLOAT

 	, FGE, FLE, FLEQ, FGEQ, FAND, FOR, FCEQ, FNEQ /*Primer y Segundo parametro: operandos, 
 																					Tercer parametro: Variable para resultado */ 	
	, FINITGLOBALARRAY
	, FINITGLOBALVAR
	, FINITLOCAL
 	, FPLUS, FMINUS, FMULTIPLY, FDIVIDE /*Primer y segundo parametro: operando, 
 																		 Tercer parametro: variable para resultado */	
	, FUNARYMINUS 	
	, ASSIGNFLOAT


 	/* Instrucciones para int */
 	, PARAM  	
 	, RETURN /* Tercer parametro: Variable con valor a retornar */ 	
 	, GE, LE, LEQ, GEQ, AND, OR, CEQ, NEQ /*Primer y Segundo parametro: operandos, 
 																					Tercer parametro: Variable para resultado */ 	
	, INITGLOBALARRAY
	, INITGLOBALVAR
	, INITLOCAL
 	, PLUS, MINUS, MULTIPLY, DIVIDE, MOD /*Primer y segundo parametro: operando, 
 																				 Tercer parametro: variable para resultado */	
	, UNARYMINUS;

	@Override
	public String toString() {
		switch(this) {
			case STRING:
				return "STRING";			
			case TEXT:
				return "TEXT";
		  case AND:
		    return "AND";
		  case OR:
		  	return "OR";
			case CALLMETHOD:
				return "CALLMETHOD";				
		  case LABEL:
		  	return "LABEL";
		  case METHODLABEL:
		  	return "METHODLABEL";
		  case JMP:
		  	return "JMP";
		  case JLE: 
		  	return "JLE";
		  case JNE:
		  	return "JNE";
		  case NOT:
		    return "NOT";
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
		  case MOD:
		    return "MOD";				
			case CONST:
				return "CONST";
		  /* Para int */
		  case PARAM:
		  	return "PARAM";		  	  
		  case RETURN:
		  	return "RETURN";		  
			case INITGLOBALARRAY:
				return "INITGLOBALARRAY";
			case INITGLOBALVAR:
				return "INITGLOBALVAR";
			case INITLOCAL:
				return"INITLOCAL";					
			case ARRAYASSIGN:
				return "ARRAYASSIGN";
			case VARASSIGN:
				return "VARASSIGN";
			case PLUS:
				return "PLUS";
			case MINUS:
				return "MINUS";
		  case MULTIPLY:
		    return "MULTIPLY";
		  case DIVIDE:
		    return "DIVIDE";
		  case LE:
		    return "LE";
		  case LEQ:
		    return "LEQ";
		  case GE:
		    return "GE";
		  case GEQ:
		    return "GEQ";
			case UNARYMINUS:
		    return "UNARYMINUS";
		  case CEQ:
		    return "CEQ";
		  case NEQ:
		    return "NEQ";
		  case CMP:
		  	return "CMP";
		  /* Para float */
		  case FPARAM:
		  	return "FPARAM";		  		  
		  case ASSIGNFLOAT:
		  	return "ASSIGNFLOAT";
		  case FRETURN:
		  	return "FRETURN";		  
		  case FLOAT:
		  	return "FLOAT";
			case FINITGLOBALARRAY:
				return "FINITGLOBALARRAY";
			case FINITGLOBALVAR:
				return "FINITGLOBALVAR";
			case FINITLOCAL:
				return"FINITLOCAL";		
			case FPLUS:
				return "FPLUS";
			case FMINUS:
				return "FMINUS";
		  case FMULTIPLY:
		    return "FMULTIPLY";
		  case FDIVIDE:
		    return "FDIVIDE";
		  case FLE:
		    return "FLE";
		  case FLEQ:
		    return "FLEQ";
		  case FGE:
		    return "FGE";
		  case FGEQ:
		    return "FGEQ";
			case FUNARYMINUS:
		    return "FUNARYMINUS";
		  case FCEQ:
		    return "FCEQ";
		  case FNEQ:
		    return "FNEQ";
		}
		return null;
	}

}