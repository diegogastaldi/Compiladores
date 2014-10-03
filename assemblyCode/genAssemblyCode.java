// VER EL ORDENDE LOS OPERANDOS.

package assemblyCode;

import java.util.List;
import intermediateCode.*;

public class genAssemblyCode {

	public static String gACode(List<Instr> interCode) {
		String result = "";
		for (Instr instr : interCode) {
			Operator op = instr.getOperator();
			switch (op) {
			  case JLE: 
			   	result += "jle 		" + instr.getResult() + "\n";
			   	break;
			  case JNE:
			   	result += "jne 		" + instr.getResult() + "\n";
			   	break;			    	
			  case CONST:
			   	result += "movl 	$" + instr.getOperand1() + ", " + instr.getResult() + "(%rbp)\n";
			   	break;
			  case CMP:
			    result += "movl		" + instr.getOperand2() + "(%rbp), %eax\n";
			  	result += "cmpl 	" + instr.getOperand1() + "(%rbp), %eax\n";
			   	break;								    	
				case PLUS:
					result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "movl		" + instr.getOperand2() + "(%rbp), %edx \n";					
					result += "addl		%eax, %edx \n";
					result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
					break;
			  case MULTIPLY:
					result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "movl		" + instr.getOperand2() + "(%rbp), %edx \n";					
					result += "imull	%eax, %edx \n";
					result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
					break;
				case MINUS:
					result += "movl		" + instr.getOperand2() + "(%rbp), %eax \n";
					result += "movl		" + instr.getOperand1() + "(%rbp), %edx \n";					
					result += "subl		%eax, %edx \n";
					result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
					break;
			  case DIVIDE:
					result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "cltd\n";
					result += "idivl	" + instr.getOperand2() + "\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case MOD:
					result += "movl		" + instr.getOperand2() + "(%rbp), %eax \n";
					result += "cltd\n";
					result += "idivl	" + instr.getOperand1() + "\n";
					result += "movl		%edx, " + instr.getResult() + "(%rbp)\n";
			  case AND:
					result += "cmpl		$0, " + instr.getOperand1() + "(%rbp)\n";
					result += "je 		.L2\n";
					result += "cmpl		$0, " + instr.getOperand2() + "(%rbp)\n";
					result += "je 		.L2\n";
					result += "movl		$1, %eax\n";
					result += "jmp		.L3\n";
					result += ".L2:\n";
					result += "movl		$0, %eax\n";
					result += ".L3:\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
				case OR:
					result += "cmpl		$0, " + instr.getOperand1() + "(%rbp)\n";
					result += "jne 		.L2\n";
					result += "cmpl		$0, " + instr.getOperand2() + "(%rbp)\n";
					result += "je 		.L3\n";
					result += ".L2: \n";
					result += "movl		$1, %eax\n";
					result += "jmp 		.L4\n";
					result += ".L3:\n";
					result += "movl		$0, %eax\n";
					result += ".L4:\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case CEQ:
			    result += "movl 	" + instr.getOperand1() + "(%rbp), %eax\n";
					result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
					result += "sete		%al\n";
					result += "movzbl	%al, %eax\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case NEQ:
			    result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
					result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
					result += "setne 	%al\n";
					result += "movzbl 	%al, %eax\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
				case ASSIGN:
					result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case NOT:
					result += "cmpl		$0, " + instr.getOperand1() + "(%rbp) \n";
					result += "sete		%al \n";
					result += "movzbl	%al, %eax \n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp) \n";
					break;
				case UNARYMINUS:
			    result += "movl		" + instr.getOperand1() + "(%rbp), %eax \n";
			    result += "negl		%eax \n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp) \n";
					break;
		    case LABEL:
		    	result += "." + instr.getResult() + ": \n";
		    	break;
		    case JMP:
		    	result += "jmp 		"+ instr.getResult() + "\n";
		    	break;
		    case RETURN:
		    	if (instr.getResult() != null) 
		    		result += "movl		" + instr.getResult() + ", %eax\n";
		    	else 
		    		result += "mov 		$0, %eax\n";
		    	result += "popq		%rbp\n";
					result += "ret\n";
		    	break;
			  case LE:
			    result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
					result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
					result += "setl		%al\n";
					result += "movzbl 	%al, %eax\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case LEQ:
			    result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
					result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
					result += "setle 	%al\n";
					result += "movzbl 	%al, %eax\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case GE:
			    result += "movl		" + instr.getOperand1() +"(%rbp), %eax\n";
					result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
					result += "setg		%al\n";
					result += "movzbl	%al, %eax\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case GEQ:
			    result += "movl		" + instr.getOperand1() + "(%rbp), %eax\n";
					result += "cmpl		" + instr.getOperand2() + "(%rbp), %eax\n";
					result += "setge 	%al\n";
					result += "movzbl 	%al, %eax\n";
					result += "movl		%eax, " + instr.getResult() + "(%rbp)\n";
					break;
			  case PARAM:
			   	result += "movl		" + instr.getOperand1() + "(%rbp), %edi\n";
			   	result += "movl	 	%edi, " + instr.getResult() + "(%rsp)\n";
			   	break;
				case ARRAYINDEX:
					int array = ((Integer)instr.getOperand1() * (Integer)instr.getOperand2());
			   	result += "movl		" + array + "(%rbp), %edi\n";
			   	result += "movl	 	%edi, " + instr.getResult() + "(%rsp)\n";
					break;
			  case CALLMETHOD:
			  	result += "call 	" + instr.getOperand1() + "\n";				
			  	result += "movl 	%eax, " + instr.getResult() + "(%rbp) \n";
			   	break;
			}
			result+="\n";
		}
		return result;
	}

}