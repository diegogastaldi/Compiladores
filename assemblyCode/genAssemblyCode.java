/* Taller de Diseño de software 2014

   Proyecto: Compilador
   
  - Integrantes:
    - Coria, Gaston
    - Gastaldi, Diego
    
  *************************************
  
	Esta clase a partir de una lista de 
	instrucciones en codigo de tres direcciones 
  y genera un string con la traduccion
  de los mismos a assebler.
*/


package assemblyCode;

import java.util.List;
import java.util.LinkedList;
import intermediateCode.*;
import semanticAnalyzer.absSymbol;
public class genAssemblyCode {
	/* Guarda codigo generado */
	private static String result;
	
	public static String gACode(List<Instr> interCode) {
		result = "";
		for (Instr instr : interCode) {
			Operator op = instr.getOperator();
			switch (op) {
				case NUMFLOAT:
					numfloatMethod(instr);
					break;				
				case INITGLOBALVAR:
					initglobalvarMethod(instr);
					break;
				case INITGLOBALARRAY:
					initglobalarrayMethod(instr);
					break;
				case INITLOCAL:
					initlocalMethod(instr);
					break;
				case GLOBALVALUEVAR:
					globalvaluevarMethod(instr);
					break;
				case GLOBALVALUEARRAY:				
					globalvaluearrayMethod(instr);
					break;
				case VARASSIGNGLOBAL:
					varassignglobalMethod(instr);				
					break;
				case ARRAYASSIGNGLOBAL:
					arrayassignglobalMethod(instr);
					break;		
			  case GLOBAL: 
			   	globalMethod(instr);
			   	break;								
			  case STRING: 
			   	stringMethod(instr);
			   	break;				
			  case VALUEARRAY: 
			   	valuearrayMethod(instr);
			   	break;
			  case ARRAYASSIGN: 
			   	arrayassignMethod(instr);
			   	break;
			  case VARASSIGN:
					varassignMethod(instr);
			   	break;			    	
			  case JLE: 
			   	jleMethod(instr);
			   	break;
			  case JNE:
					jneMethod(instr);
			   	break;			    	
			  case CONST:
					constMethod(instr);
			   	break;
			  case CMP:
			  	cmpMethod(instr);
			   	break;								    	
				case PLUS:
					plusMethod(instr);
					break;
			  case MULTIPLY:
					multiplyMethod(instr);
					break;
				case MINUS:
					minusMethod(instr);
					break;
			  case DIVIDE:
			  	divideMethod(instr);
					break;
			  case MOD:
			  	modMethod(instr);
					break;
			  case AND:
			  	andMethod(instr);
					break;
				case OR:
					orMethod(instr);
					break;
			  case CEQ:
			  	ceqMethod(instr);
					break;
			  case NEQ:
			  	neqMethod(instr);
					break;
			  case NOT:
					notMethod(instr);
					break;
				case UNARYMINUS:
					unaryminusMethod(instr);
					break;
		    case LABEL:
		    	labelMethod(instr);
		    	break;
		    case METHODLABEL:
		    	methodlabelMethod(instr);
		    	break;		    	
		    case JMP:
		    	jmpMethod(instr);
		    	break;
		    case RETURN:
		    	returnMethod(instr);
		    	break;
			  case LE:
			  	leMethod(instr);
					break;
			  case LEQ:
			  	leqMethod(instr);
					break;
			  case GE:
			  	geMethod(instr);
					break;
			  case GEQ:
					geqMethod(instr);
					break;
			  case PARAM:
			  	paramMethod(instr);
			   	break;
			  case CALLMETHOD:
			  	callmethodMethod(instr);
			   	break;
			  case TEXT:
			  	textMethod(instr);
			   	break;
			  case FPARAM:
			  	fparamMethod(instr);
			  	break;
			  case ASSIGNFLOAT:
			  	assignfloatMethod(instr);
			  	break;
			  case FRETURN:
			  	freturnMethod(instr);
			  	break;
			  case FLOAT:
			  	floatMethod(instr);
			  	break;
				case FPLUS:
					fplusMethod(instr);
					break;
				case FMINUS:
					fminusMethod(instr);
					break;
			  case FMULTIPLY:
			    fmultiplyMethod(instr);
			    break;
			  case FDIVIDE:
			    fdivideMethod(instr);
			    break;
			  case FLE:
			    fleMethod(instr);
			    break;
			  case FLEQ:
			    fleqMethod(instr);
			    break;
			  case FGE:
			    fgeMethod(instr);
			    break;
			  case FGEQ:
			    fgeqMethod(instr);
			    break;
				case FUNARYMINUS:
			    funaryminusMethod(instr);
			    break;
			  case FCEQ:
			    fceqMethod(instr);
			    break;
			  case FNEQ:
			    fneqMethod(instr);
			    break;
			}
			result+="\n";
		}
		return result;
	}

	/* Constante string, es importante que esta instruccion sea colocada 
		 al principio del archivo */
	public static void stringMethod(Instr instr) {
		result += "." + instr.getOperand2() + ": \n";		
		result += "		.string \""+ instr.getOperand1() + "\" \n";
	}

	/* Salto por menor o igual */
	public static void jleMethod(Instr instr) {
		result += "jle 		." + instr.getResult() + "\n";
	}

	/* Salto por desigualdad */
	public static void jneMethod(Instr instr) {
	  result += "jne 		." + instr.getResult() + "\n";
	}

	/* Asignacion de una constante a una direccion de memoria */
	public static void constMethod(Instr instr) {
	  result += "movq 	$" + instr.getOperand1() + ", " + instr.getResult() + "(%rbp)\n";
	}

	/* Compara el contenido de dos direcciones de memoria */
	public static void cmpMethod(Instr instr) {
		result += "mov		" + instr.getOperand2() + "(%rbp), %r10\n";
		result += "cmp 		" + instr.getOperand1() + "(%rbp), %r10\n";
	}

	/* Suma el contenido de dos direcciones de memoria */
	public static void plusMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10 \n";
		result += "mov		" + instr.getOperand2() + "(%rbp), %r11 \n";					
		result += "add		%r10, %r11 \n";
		result += "mov		%r11, " + instr.getResult() + "(%rbp)\n";
	}

	/* Multiplica el contenido de dos direcciones de memoria */
	public static void multiplyMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10 \n";
		result += "mov		" + instr.getOperand2() + "(%rbp), %r11 \n";					
		result += "imul		%r11, %r10 \n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp)\n";
	}

	/* Resta el contenido de dos direcciones de memoria */
	public static void minusMethod(Instr instr) {
		result += "mov		" + instr.getOperand2() + "(%rbp), %r10 \n";
		result += "mov		" + instr.getOperand1() + "(%rbp), %r11 \n";					
		result += "sub		%r10, %r11 \n";
		result += "mov		%r11, " + instr.getResult() + "(%rbp)\n";
	}

	/* Divide el contenido de dos direcciones de memoria */
	public static void divideMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %rax \n";
		result += "cltd\n";
		result += "idivq	" + instr.getOperand2() + "(%rbp) \n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	/* Mod del contenido de dos direcciones de memoria */
	public static void modMethod(Instr instr) {
		result += "mov		" + instr.getOperand2() + "(%rbp), %rax \n";
		result += "cltd\n";
		result += "idivq	" + instr.getOperand1() + "(%rbp)\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	/* Realiza la operacion AND entre el contenido de dos direcciones de memoria */
	public static void andMethod(Instr instr) {
		Integer operand1 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();
		Integer operand2 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();

		String label1 = ((LinkedList<String>)instr.getOperand1()).removeFirst();
		String label2 = ((LinkedList<String>)instr.getOperand1()).removeFirst();

		result += "cmpq		$0, " + operand1 + "(%rbp)\n";
		result += "je 		." + label1 + "\n";
		result += "cmpq		$0, " + operand2 + "(%rbp)\n";
		result += "je 		." + label1 + "\n";
		result += "mov		$1, %r10\n";
		result += "jmp		." + label2 + "\n";
		result += "." + label1 + ":\n";
		result += "mov		$0, %r10\n";
		result += "." + label2 + ":\n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp)\n";
	}

	/* Realiza la operacion OR entre el contenido de dos direcciones de memoria */
	public static void orMethod(Instr instr) {
		Integer operand1 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();
		Integer operand2 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();

		String label1 = ((LinkedList<String>)instr.getOperand1()).removeFirst();
		String label2 = ((LinkedList<String>)instr.getOperand1()).removeFirst();
		String label3 = ((LinkedList<String>)instr.getOperand1()).removeFirst();

		result += "cmpq		$0, " + operand1 + "(%rbp)\n";
		result += "jne 		." + label1 + "\n";
		result += "cmpq		$0, " + operand2 + "(%rbp)\n";
		result += "je 		." + label2 + "\n";
		result += "." + label1 + ": \n";
		result += "mov		$1, %r10\n";
		result += "jmp 		." + label3 + "\n";
		result += "." + label2 + ":\n";
		result += "mov		$0, %r10\n";
		result += "." + label3 + ":\n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp)\n";
	}

	/* Realiza la operacion == entre el contenido de dos direcciones de memoria */
	public static void ceqMethod(Instr instr) {
	  result += "mov 		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "sete		%al\n";
		result += "movzb	%al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	/* Realiza la operacion != entre el contenido de dos direcciones de memoria */
	public static void neqMethod(Instr instr) {
	  result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setne 	%al\n";
		result += "movzb 	%al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	/* Realiza la operacion NOT entre el contenido de dos direcciones de memoria */
	public static void notMethod(Instr instr) {
		result += "cmpq		$0, " + instr.getOperand1() + "(%rbp) \n";
		result += "sete		%al \n";
		result += "movzb	%al, %rax \n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	/* Realiza el menos unario del contenido de una direcciones de memoria */
	public static void unaryminusMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %rax \n";
		result += "neg		%rax \n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	/* Coloca un label */
	public static void labelMethod(Instr instr) {
		result += "." + instr.getResult() + ": \n";		
	}

	/* Realiza un salto incondicional */
	public static void jmpMethod(Instr instr) {
		result += "jmp 		."+ instr.getResult() + "\n";		
	}

	/* Realiza el retorno de un metodo */
	public static void returnMethod(Instr instr) {
	 	if (instr.getResult() != null) 
	 		result += "mov		" + instr.getResult() + "(%rbp), %rax\n";
	 	else 
			result += "mov 		$0, %rax\n";
	 	result += "leave\n";
		result += "ret\n";
	}

	/* Realiza la comparacion < entre el contenido de dos direcciones de memoria */
	public static void leMethod(Instr instr) {
    result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setl		%al\n";
		result += "movzb 	%al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";		
	}

	/* Realiza la comparacion <= entre el contenido de dos direcciones de memoria */
	public static void leqMethod(Instr instr) {
    result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setle 	%al\n";
		result += "movzb  %al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	/* Realiza la comparacion > entre el contenido de dos direcciones de memoria */
	public static void geMethod(Instr instr) {
    result += "mov		" + instr.getOperand1() +"(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setg		%al\n";
		result += "movzb	%al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	/* Realiza la comparacion >= entre el contenido de dos direcciones de memoria */
	public static void geqMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setge 	%al\n";
		result += "movzb 	%al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";		
	}

	/* Apila los parametros previo a una llamada a un metodo, usando para los primeros parametros 
	los registros adecuados y para los siguientes, direcciones de memoria */
	public static void paramMethod(Instr instr) {
		/* Guarda el parametro en r10 */
		if (instr.getOperand1() instanceof String ) 
			result += "mov		" + instr.getOperand1() + ", %r10\n";
		else
			result += "mov		" + instr.getOperand1() + "(%rbp), %r10\n";
		/* El parametro es guardado en el registro o lugar de memoria que corresponde */
		if (instr.getResult() == null)  {
			Integer numOperand = (Integer)instr.getOperand2();			
			result += "mov	 	%r10, " + paramRegister.registersInt [numOperand] + "\n";
		}	else 
			result += "mov	 	%r10, " + instr.getResult() + "(%rbp) \n";			
	}

	/* Indica la cantidad de xmm registros usados en la llamada a procedimiento */
	public static void numfloatMethod(Instr instr) {
		result += "mov 		$" + instr.getResult() + ", %rax \n";
	}

	/* Realiza el llamado a un metodo */
	public static void callmethodMethod(Instr instr) {
  	result += "call 	" + instr.getOperand1() + "\n";		
  	if (instr.getResult() != null) {
  		if ((Boolean)instr.getOperand2())
  			result += "movss 	%xmm0, " + instr.getResult() + "(%rbp) \n";		
  		else 
  			result += "mov 	%rax, " + instr.getResult() + "(%rbp) \n";		
  	}
	}

	/* Coloca un label para una funcion, reserva la memoria correspondiente para esta
		y apila los parametros en variables locales */
	public static void methodlabelMethod(Instr instr) {
		result += ".globl	" + instr.getResult() + "\n";
		result += ".type	" + instr.getResult() + ", @function \n";			
		result += instr.getResult() + ": \n";		
		result += "enter   $(8 * " + instr.getOperand1() + "), $0 \n";

		Integer floatParam = 0;
		Integer intParam = 0;
		Integer i = 0;
		/* Guarda parametros en memoria reservada del metodo actual */
		for (absSymbol param : (LinkedList<absSymbol>) instr.getOperand2()) {
			switch (param.getType()) {
				case INT : case BOOLEAN:
					if (intParam < paramRegister.registersInt.length) {
						result += "mov 		" + paramRegister.registersInt[intParam] + ", " + ((i+1) * (-8)) + "(%rbp) \n";
						intParam++;
					}
					else {
						result += "mov 		" + (((i+1)-paramRegister.registersInt.length) * 8) + "(%rbp), %r10\n";
						result += "mov 		%r10, " + ((i+1) * (-8)) + "(%rbp) \n";												
					}
					break;
				case FLOAT: 
					if (floatParam < paramRegister.registersFloat.length) {
						result += "movss 		" + paramRegister.registersFloat[floatParam] + ", " + ((i+1) * (-8)) + "(%rbp) \n";
						floatParam++;
					}
					else {
						result += "mov 		" + (((i+1)-paramRegister.registersFloat.length) * 8) + "(%rbp), %r10\n";
						result += "mov 		%r10, " + ((i+1) * (-8)) + "(%rbp) \n";												
					}						
					break;					
			}
			i++;
		}
	}

	/* Asigna el contenido de una direccion de memoria a un arreglo local al metodo */
	public static void arrayassignMethod(Instr instr) {
		result += "mov 		" + instr.getOperand1() + "(%rbp), %r10 \n";
		result += "movl		" + instr.getOperand2() + "(%rbp), %edx \n";
		result += "cltq \n";
		result += "mov 		%r10, " + instr.getResult() + "(%rbp, %rdx, 8) \n";		
	}

	/* Asigna el contenido de una direccion de memoria a una variable local al metodo */
	public static void varassignMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10\n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp)\n";
	}

	/* Asigna el contenido de una direccion de memoria a un arreglo global */
	public static void arrayassignglobalMethod(Instr instr) {
		result += "mov 		" + instr.getOperand1() + "(%rbp)" + ", %r10 \n";
		result += "mov 		" + instr.getOperand2() + "(%rbp)" + ", %edx \n";
		result += "cltq \n";
		result += "mov 		%r10, " + instr.getResult() + "(, %rdx, 8) \n";
	}

	/* Asigna el contenido de una direccion de memoria a una variable global */
	public static void varassignglobalMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10\n";
		result += "mov		%r10, " + instr.getResult() + "(%rip)\n";
	}

	/* Recupera el valor de un arreglo local */
	public static void valuearrayMethod(Instr instr) {
		result += "movl		" + instr.getOperand2() + "(%rbp), %edx \n";
		result += "cltq \n";
		result += "mov 		" + instr.getOperand1() + "(%rbp,%rdx,8) , %r11\n";
		result += "mov 		%r11, "+ instr.getResult() + "(%rbp) \n";
	}

	/* Recupera el valor de un arreglo global */
	public static void globalvaluearrayMethod(Instr instr) {
		result += "mov 		" + instr.getOperand2() + "(%rbp), %edx \n";
		result += "cltq \n";	
		result += "mov 		" + instr.getOperand1() + "(,%rdx,8) , %r11\n";
		result += "mov 		%r11, "+ instr.getResult() + "(%rbp) \n";
	}

	/* Recupera el valor de una variable global */	
	public static void globalvaluevarMethod(Instr instr) {
		result += "mov 		" + instr.getOperand1() + "(%rip), %r10 \n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp) \n";	
	}

	/* Indica el comienzo de codigo */
	public static void textMethod(Instr instr) {
		result += instr.getResult();
	}

	/* Declaracion de variables globales */
	public static void globalMethod(Instr instr) {
		result += ".comm " + instr.getOperand1() + ", " + instr.getOperand2() + "\n";
	}	

	/* Inicializa la variable local en la direccion pasada como resultado en la instr */
	public static void initlocalMethod(Instr instr) {
		result += "movq		$" + instr.getOperand1() + ", %r10\n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp)\n";
	}

	/* Inicializa la variable global con la etiqueta como resultado en la instr */
	public static void initglobalvarMethod(Instr instr) {
		result += "mov		$" + instr.getOperand1() + ", %r10\n";
		result += "mov		%r10, " + instr.getResult() + "(%rip)\n";
	}

	/* Inicializa el arreglo global con la etiqueta como resultado en la instr */
	public static void initglobalarrayMethod(Instr instr) {
		int i = 0;
		while (i < (Integer)instr.getOperand2()) {
			result += "mov 		$" + instr.getOperand1() + ", %r10 \n";
			result += "mov 		$" + i + ", %edx \n";
			result += "cltq \n";
			result += "mov 		%r10, " + instr.getResult() + "(, %rdx, 8) \n";
			i++;
		}
	}		

	/* Apila los parametros de tipo float previo a una llamada a un metodo, 
		usando para los primeros parametros los registros adecuados y para 
		los siguientes, direcciones de memoria */
	public static void fparamMethod(Instr instr) {
		Integer operand = (Integer)instr.getResult();
		/* El parametro es guardado en el registro o lugar de memoria que corresponde */
		if (operand >= 0) {
		  result += "movss		" + instr.getOperand1() + "(%rbp), " + paramRegister.registersFloat [operand] + "\n";	
			if ((Boolean)instr.getOperand2()) 
				result += "cvtps2pd	" + paramRegister.registersFloat[operand] + ", " + paramRegister.registersFloat[operand] + " \n";
		} else {
			result += "mov		" + instr.getOperand1() + "(%rbp), %r10\n";			
			result += "mov		%r10, " + operand + "(%rbp)\n";
		}
	}

	public static void assignfloatMethod(Instr instr) {
		result += "mov	." + instr.getOperand1() + "(%rip), %r10\n";
		result += "mov	%r10, " + instr.getResult() + "(%rbp)\n";

	}

	/* Genera las instrucciones para el retorno de un metodo con tipo float */
	public static void freturnMethod(Instr instr) {
	 	result += "movss		" + instr.getResult() + "(%rbp), %xmm0\n";
	 	result += "leave\n";
		result += "ret\n";		
	}

	/* Genera la etiqueta para un float literal */
	public static void floatMethod(Instr instr) {
		result += "." + instr.getOperand2() + ": \n";		
		result += "		.float " + instr.getOperand1() + " \n";
	}

	public static void fplusMethod(Instr instr) {
		result += "movss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result += "addss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "movss		%xmm0, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fminusMethod(Instr instr) {
		result +=	"movss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result += "subss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "movss		%xmm0, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fmultiplyMethod(Instr instr) {
		result +=	"movss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result +=	"mulss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "movss		%xmm0, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fdivideMethod(Instr instr) {
		result +=	"movss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result +=	"divss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "movss		%xmm0, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fleMethod(Instr instr) {
		result += "movss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result += "ucomiss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "seta			%al \n";
		result += "movzb		%al, %rax \n";
		result += "mov 		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fleqMethod(Instr instr) {
		result += "movss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result += "ucomiss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "setae		%al \n";
		result += "movzb		%al, %rax \n";
		result += "mov 		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fgeMethod(Instr instr) {
		result += "movss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "ucomiss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result += "seta			%al \n";
		result += "movzb		%al, %rax \n";
		result += "mov 		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fgeqMethod(Instr instr) {
		result += "movss		" + instr.getOperand2() + "(%rbp), %xmm0 \n";
		result += "ucomiss		" + instr.getOperand1() + "(%rbp), %xmm0 \n";
		result += "setae		%al \n";
		result += "movzb		%al, %rax \n";
		result += "mov 		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void funaryminusMethod(Instr instr) {
		result += "movss		" + instr.getOperand1() + "(%rbp), %xmm1 \n";
		/* El segundo operando es un cero de tipo float */
		result += "movss		." + instr.getOperand2() + "(%rip), %xmm0 \n";
		/* Cero menos el valor, da el valor negado */
		result += "subss		%xmm1, %xmm0 \n";
		result += "movss		%xmm0, " + instr.getResult() + "(%rbp) \n";
	}

	public static void fceqMethod(Instr instr) {
		LinkedList<String> op1 = (LinkedList<String>) instr.getOperand1();
		LinkedList<String> op2 = (LinkedList<String>) instr.getOperand2();
		LinkedList<Integer> op3 = (LinkedList<Integer>) instr.getResult();
		result +=	"movss		" + op3.get(0) + "(%rbp), %xmm0 \n";
		result +=	"ucomiss		" + op3.get(1) + "(%rbp), %xmm0 \n";
		result +=	"jp	." + op2.get(0) + " \n";
		result +=	"movss		" + op3.get(0) + "(%rbp), %xmm0 \n";
		result +=	"ucomiss		" + op3.get(1) + "(%rbp), %xmm0 \n";
		result +=	"jne	." + op2.get(0) + " \n";
		result +=	"mov		." + op1.get(0) + "(%rip), %rax \n";
		result +=	"jmp	." + op2.get(1) + " \n";
		result += "." + op2.get(0) + ": \n";
		result +=	"mov	." + op1.get(1) + ", %rax \n";
		result += "." + op2.get(1) + ": \n";
		result +=	"mov	%rax, " + op3.get(2) + "(%rbp) \n";
	}

	public static void fneqMethod(Instr instr) {
		LinkedList<String> op1 = (LinkedList<String>) instr.getOperand1();
		LinkedList<String> op2 = (LinkedList<String>) instr.getOperand2();
		LinkedList<Integer> op3 = (LinkedList<Integer>) instr.getResult();
 		result += "	movss		" + op3.get(0) + "(%rbp), %xmm0 \n";
		result += "	ucomiss		" + op3.get(1) + "(%rbp), %xmm0 \n";
		result += "	jp	." + op2.get(0) + " \n";
		result += "	movss		" + op3.get(0) + "(%rbp), %xmm0 \n";
		result += "	ucomiss		" + op3.get(1) + "(%rbp), %xmm0 \n";
		result += "	je	." + op2.get(1) + " \n";
		result += "." + op2.get(0) + ": \n";
		result += "	mov		." + op1.get(0) + "(%rip), %rax \n";
		result += "	jmp	." + op2.get(2) + " \n";
		result += "." + op2.get(1) + ": \n";
		result += "	mov		." + op1.get(0) + "(%rip), %rax \n";
		result += "." + op2.get(2) + ": \n";
		result += "	mov		%rax, " + op3.get(2) + "(%rbp) \n";
	}
}