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

public class genAssemblyCode {
	/* Guarda codigo generado */
	private static String result;
	
	public static String gACode(List<Instr> interCode) {
		result = "";
		for (Instr instr : interCode) {
			Operator op = instr.getOperator();
			switch (op) {
				case GLOBALVALUEVAR:
					globalvaluevarmethod(instr);
					break;
				case GLOBALVALUEARRAY:				
					globalvaluearraymethod(instr);
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
			}
			result+="\n";
		}
		return result;
	}

	public static void stringMethod(Instr instr) {
		result += "." + instr.getOperand2() + ": \n";		
		result += "		.string \""+ instr.getOperand1() + "\" \n";
	}

	public static void jleMethod(Instr instr) {
		result += "jle 		." + instr.getResult() + "\n";
	}

	public static void jneMethod(Instr instr) {
	  result += "jne 		." + instr.getResult() + "\n";
	}

	public static void constMethod(Instr instr) {
	  result += "movq 	$" + instr.getOperand1() + ", " + instr.getResult() + "(%rbp)\n";
	}

	public static void cmpMethod(Instr instr) {
		result += "mov		" + instr.getOperand2() + "(%rbp), %r10\n";
		result += "cmp 	" + instr.getOperand1() + "(%rbp), %r10\n";
	}

	public static void plusMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10 \n";
		result += "mov		" + instr.getOperand2() + "(%rbp), %r11 \n";					
		result += "add		%r10, %r11 \n";
		result += "mov		%r11, " + instr.getResult() + "(%rbp)\n";
	}

	public static void multiplyMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10 \n";
		result += "mov		" + instr.getOperand2() + "(%rbp), %r11 \n";					
		result += "imul		%r11, %r10 \n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp)\n";
	}

	public static void minusMethod(Instr instr) {
		result += "mov		" + instr.getOperand2() + "(%rbp), %r10 \n";
		result += "mov		" + instr.getOperand1() + "(%rbp), %r11 \n";					
		result += "sub		%r10, %r11 \n";
		result += "mov		%r11, " + instr.getResult() + "(%rbp)\n";
	}

	public static void modMethod(Instr instr) {
		result += "mov		" + instr.getOperand2() + "(%rbp), %rax \n";
		result += "cltd\n";
		result += "idivq	" + instr.getOperand1() + "(%rbp)\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

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

	public static void ceqMethod(Instr instr) {
	  result += "mov 		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "sete		%al\n";
		result += "movzb	%al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void neqMethod(Instr instr) {
	  result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setne 	%al\n";
		result += "movzb %al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void notMethod(Instr instr) {
		result += "cmpq		$0, " + instr.getOperand1() + "(%rbp) \n";
		result += "sete		%al \n";
		result += "movzb	%al, %rax \n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void unaryminusMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %rax \n";
		result += "neg		%rax \n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void labelMethod(Instr instr) {
		result += "." + instr.getResult() + ": \n";		
	}

	public static void jmpMethod(Instr instr) {
		result += "jmp 		."+ instr.getResult() + "\n";		
	}

	public static void returnMethod(Instr instr) {
	 	if (instr.getResult() != null) 
	 		result += "mov		" + instr.getResult() + "(%rbp), %rax\n";
	 	else 
			result += "mov 		$0, %rax\n";
	 	result += "leave\n";
		result += "ret\n";
	}

	public static void leMethod(Instr instr) {
    result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setl		%al\n";
		result += "movzb %al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";		
	}

	public static void leqMethod(Instr instr) {
    result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setle 	%al\n";
		result += "movzb  %al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void geMethod(Instr instr) {
    result += "mov		" + instr.getOperand1() +"(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setg		%al\n";
		result += "movzb	%al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void geqMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %rax\n";
		result += "cmp		" + instr.getOperand2() + "(%rbp), %rax\n";
		result += "setge 	%al\n";
		result += "movzb %al, %rax\n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";		
	}

	public static void paramMethod(Instr instr) {
		/* Guarda el parametro en r10 */
		if (instr.getOperand1() instanceof String ) 
			result += "mov		" + instr.getOperand1() + ", %r10\n";
		else
			result += "mov		" + instr.getOperand1() + "(%rbp), %r10\n";
		Integer numOperand = (Integer)instr.getOperand2();
		String destRegister;
		/* El parametro es guardado en el registro o lugar de memoria que corresponde */
		if (numOperand < 6)  
			destRegister = paramRegister.registers [numOperand];		
		else 
			destRegister = instr.getResult() + "(%rbp)";
		result += "mov	 	%r10, " + destRegister + "\n";
	}

	public static void callmethodMethod(Instr instr) {
		result += "mov 		$0, %rax \n";
  	result += "call 	" + instr.getOperand1() + "\n";		
  	if (instr.getResult() != null)
  		result += "mov 	%rax, " + instr.getResult() + "(%rbp) \n";		
	}

	public static void divideMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %rax \n";
		result += "cltd\n";
		result += "idivq	" + instr.getOperand2() + "(%rbp) \n";
		result += "mov		%rax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void methodlabelMethod(Instr instr) {
		result += ".globl	" + instr.getResult() + "\n";
		result += ".type	" + instr.getResult() + ", @function \n";			
		result += instr.getResult() + ": \n";		
		result += "enter   $(8 * " + instr.getOperand1() + "), $0 \n";

		/* Guarda parametros en memoria reservada del metodo actual */
		for (int i = 0 ; i < ((Integer)instr.getOperand2()); i++) {
			if (i < paramRegister.registers.length)
				result += "mov 		" + paramRegister.registers[i] + ", " + ((i+2) * (-8)) + "(%rbp) \n";
			else {
				result += "mov 		" + (((i+1)-paramRegister.registers.length) * 8) + "(%rbp), %r10\n";
				result += "mov 		%r10, " + ((i+2) * (-8)) + "(%rbp) \n";
			}
		}
	}

	public static void arrayassignMethod(Instr instr) {
		result += "mov 		" + instr.getOperand1() + "(%rbp), %r10 \n";
		result += "movq		" + instr.getOperand2() + "(%rbp), %edx \n";
		result += "cltq \n";
		result += "mov 		%r10, " + instr.getResult() + "(%rbp, %rdx, 8) \n";		
	}

	public static void varassignMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10\n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp)\n";
	}

	public static void valuearrayMethod(Instr instr) {
		result += "movq		" + instr.getOperand2() + "(%rbp)" + ", %edx \n";
		result += "cltq \n";
		result += "mov 		" + instr.getOperand1() + "(%rbp,%rdx,8) , %r11\n";
		result += "mov 		%r11, "+ instr.getResult() + "(%rbp) \n";
	}

	public static void textMethod(Instr instr) {
		result += instr.getResult();
	}

	public static void globalMethod(Instr instr) {
		result += ".comm " + instr.getOperand1() + ", " + instr.getOperand2() + "\n";
	}

	public static void varassignglobalMethod(Instr instr) {
		result += "mov		" + instr.getOperand1() + "(%rbp), %r10\n";
		result += "mov		%r10, " + instr.getResult() + "(%rip)\n";
	}

	public static void arrayassignglobalMethod(Instr instr) {
		result += "mov 		" + instr.getOperand1() + "(%rbp)" + ", %r10 \n";
		result += "mov 		" + instr.getOperand2() + "(%rbp)" + ", %edx \n";
		result += "imul		$8, %edx \n";
		result += "cltq \n";
		result += "mov 		%r10, " + instr.getResult() + "(, %edx, 8) \n";
	}	

	public static void globalvaluearraymethod(Instr instr) {
		result += "mov 		" + instr.getOperand2() + "(%rbp)" + ", %edx \n";
		result += "imul		$8, %edx \n";
		result += "cltq \n";	
		result += "mov 		" + instr.getOperand1() + "(,%edx,8) , %r11\n";
		result += "mov 		%r11, "+ instr.getResult() + "(%rbp) \n";
	}

	public static void globalvaluevarmethod(Instr instr) {
		result += "mov 		" + instr.getOperand1() + "(%rip), %r10 \n";
		result += "mov		%r10, " + instr.getResult() + "(%rbp) \n";	
	}
}