package assemblyCode;

import java.util.List;
import intermediateCode.*;

public class genAssemblyCode {

	public static String gACode(List<Instr> interCode) {
		String result = "";
		for (Instr instr : interCode) {
			Operator op = instr.getOperator();
			switch (op) {
				case CALLINTMETHOD:
					return "CALLINTMETHOD";
				case ARRAYINDEX:
					return "ARRAYINDEX";
				case PLUS:
					result += "movl	-" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "addl	%eax, -" + instr.getOperand2() + "(%rbp) \n";
				case MINUS:
					result += "movl	-" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "subl	%eax, -" + instr.getOperand2() + "(%rbp) \n";
			    case MULTIPLY:
					result += "movl	-" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "imull %eax, -" + instr.getOperand2() + "(%rbp) \n";
			    case DIVIDE:
					result += "movl	-" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "idivl %eax, -" + instr.getOperand2() + "(%rbp) \n";
			    case MOD:
					result += "movl	-" + instr.getOperand1() + "(%rbp), %eax \n";
					result += "cltd";
					result += "idivl -" + instr.getOperand2() + "(%rbp) \n";
					result += "movl	%edx, -" + instr.getResult() + "(%rbp) \n";
			    case LE:
			        return "LE";
			    case LEQ:
			        return "LEQ";
			    case GE:
			        return "GE";
			    case GEQ:
			        return "GEQ";
			    case NOT:
					result += "cmpl	$0, -" + instr.getOperand1() + "(%rbp) \n";
					result += "sete	%al \n";
					result += "movzbl	%al, %eax \n";
					result += "movl	%eax, -" + instr.getResult() + "(%rbp) \n";
				case UNARYMINUS:
			        result += "movl	-" + instr.getOperand1() + "(%rbp), %eax \n";
			        result += "negl	%eax \n";
					result += "movl	%eax, -" + instr.getResult() + "(%rbp) \n";
			    case AND:
			        return "AND";
			    case CEQ:
			        return "CEQ";
			    case NEQ:
			        return "NEQ";
				case ASSIGN:
			        return "ASSIGN";
			    case LABEL:
			    	result += "." + instr.getResult() + ": \n";
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
			result+="\n";
		}
		return result;
	}

}