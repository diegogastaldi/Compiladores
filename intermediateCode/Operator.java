package intermediateCode;
public enum Operator {
 	CALLINTMETHOD, ARRAYINDEX, PLUS, MINUS, MULTIPLY, DIVIDE, MOD, GE,  LE,
 	LEQ, GEQ, NOT, UNARYMINUS, AND, OR, CEQ, NEQ, ASSIGN, LABEL, CALLEXTMETHOD,
 	LNE, CMP, JMP, JNL, JNE, RETURN, PARAM;
	
	@Override
	public String toString() {
		switch(this) {
			case CALLINTMETHOD:
				return "CALLINTMETHOD";
			case ARRAYINDEX:
				return "ARRAYINDEX";
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
		    case LNE:
		    	return "LNE";
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