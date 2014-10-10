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
			  case STRING: 
			   	stringMethod(instr);
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
	  result += "movl 	$" + instr.getOperand1() + ", " + instr.getResult() + "(%rbp)\n";
	}

	public static void cmpMethod(Instr instr) {
		result += "movl		" + instr.getOperand2() + "(%rbp), %eax\n";
		result += "cmpl 	" + instr.getOperand1() + "(%rbp), %eax\n";
	}

	public static void plusMethod(Instr instr) {
		result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
		result += "movl		" + instr.getOperand2() + "(%rbp), %edx \n";					
		result += "addl		%eax, %edx \n";
		result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
	}

	public static void multiplyMethod(Instr instr) {
		result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
		result += "movl		" + instr.getOperand2() + "(%rbp), %edx \n";					
		result += "imull	%eax, %edx \n";
		result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
	}

	public static void minusMethod(Instr instr) {
		result += "movl		" + instr.getOperand2() + "(%rbp), %eax \n";
		result += "movl		" + instr.getOperand1() + "(%rbp), %edx \n";					
		result += "subl		%eax, %edx \n";
		result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
	}

	public static void modMethod(Instr instr) {
		result += "movl		" + instr.getOperand2() + "(%rbp), %eax \n";
		result += "cltd\n";
		result += "idivl	" + instr.getOperand1() + "\n";
		result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
	}

	public static void andMethod(Instr instr) {
		Integer operand1 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();
		Integer operand2 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();

		String label1 = ((LinkedList<String>)instr.getOperand1()).removeFirst();
		String label2 = ((LinkedList<String>)instr.getOperand1()).removeFirst();

		result += "cmpl		$0, " + operand1 + "(%rbp)\n";
		result += "je 		." + label1 + "\n";
		result += "cmpl		$0, " + operand2 + "(%rbp)\n";
		result += "je 		." + label1 + "\n";
		result += "movl		$1, %eax\n";
		result += "jmp		." + label2 + "\n";
		result += "." + label1 + ":\n";
		result += "movl		$0, %eax\n";
		result += "." + label2 + ":\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void orMethod(Instr instr) {
		Integer operand1 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();
		Integer operand2 = ((LinkedList<Integer>)instr.getOperand2()).removeFirst();

		String label1 = ((LinkedList<String>)instr.getOperand1()).removeFirst();
		String label2 = ((LinkedList<String>)instr.getOperand1()).removeFirst();
		String label3 = ((LinkedList<String>)instr.getOperand1()).removeFirst();

		result += "cmpl		$0, " + operand1 + "(%rbp)\n";
		result += "jne 		." + label1 + "\n";
		result += "cmpl		$0, " + operand2 + "(%rbp)\n";
		result += "je 		." + label2 + "\n";
		result += "." + label1 + ": \n";
		result += "movl		$1, %eax\n";
		result += "jmp 		." + label3 + "\n";
		result += "." + label2 + ":\n";
		result += "movl		$0, %eax\n";
		result += "." + label3 + ":\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void ceqMethod(Instr instr) {
	  result += "movl 	" + instr.getOperand1() + "(%rbp), %eax\n";
		result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
		result += "sete		%al\n";
		result += "movzbl	%al, %eax\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void neqMethod(Instr instr) {
	  result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
		result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
		result += "setne 	%al\n";
		result += "movzbl %al, %eax\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void notMethod(Instr instr) {
		result += "cmpl		$0, " + instr.getOperand1() + "(%rbp) \n";
		result += "sete		%al \n";
		result += "movzbl	%al, %eax \n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void unaryminusMethod(Instr instr) {
		result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
		result += "negl		%eax \n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp) \n";
	}

	public static void labelMethod(Instr instr) {
		result += "." + instr.getResult() + ": \n";		
	}

	public static void jmpMethod(Instr instr) {
		result += "jmp 		."+ instr.getResult() + "\n";		
	}

	public static void returnMethod(Instr instr) {
	 	if (instr.getResult() != null) 
	 		result += "movl		" + instr.getResult() + "(%rbp), %eax\n";
	 	else 
			result += "mov 		$0, %eax\n";
	 	result += "leave\n";
		result += "ret\n";
	}

	public static void leMethod(Instr instr) {
    result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
		result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
		result += "setl		%al\n";
		result += "movzbl %al, %eax\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";		
	}

	public static void leqMethod(Instr instr) {
    result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
		result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
		result += "setle 	%al\n";
		result += "movzbl %al, %eax\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void geMethod(Instr instr) {
    result += "movl		" + instr.getOperand1() +"(%rbp), %eax\n";
		result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
		result += "setg		%al\n";
		result += "movzbl	%al, %eax\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void geqMethod(Instr instr) {
		result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
		result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
		result += "setge 	%al\n";
		result += "movzbl %al, %eax\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";		
	}

	public static void paramMethod(Instr instr) {
		if (instr.getOperand1() instanceof String ) 
			result += "movl		" + instr.getOperand1() + ", %edi\n";
		else
			result += "movl		" + instr.getOperand1() + "(%rbp), %edi\n";
		result += "movl	 	%edi, " + instr.getResult() + "(%rsp)\n";
	}

	public static void callmethodMethod(Instr instr) {
  	result += "call 	" + instr.getOperand1() + "\n";		
  	if (instr.getResult() != null)
  		result += "movl 	%eax, " + instr.getResult() + "(%rbp) \n";		
	}

	public static void divideMethod(Instr instr) {
		result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
		result += "cltd\n";
		result += "idivl	" + instr.getOperand2() + "\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void methodlabelMethod(Instr instr) {
		result += ".globl	" + instr.getResult() + "\n";
		result += ".type	" + instr.getResult() + ", @function \n";			
		result += instr.getResult() + ": \n";		
		result += "pushq	%rbp\n";
		result += "movq		%rsp, %rbp\n";
	}

	public static void arrayassignMethod(Instr instr) {
		result += "movl 	" + instr.getOperand1() + ", %ebx \n";
		result += "movl 	" + instr.getOperand2() + ", %edx \n";
		result += "movl 	%ebx, " + instr.getResult() + "(%rbp, %rdx, 4) \n";		
	}

	public static void varassignMethod(Instr instr) {
		if (instr.getOperand1() instanceof String ) 
			result += "movl		" + instr.getOperand1() + ", %eax\n";
		else 
			result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
		result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
	}

	public static void textMethod(Instr instr) {
		result += instr.getResult();
	}
} 