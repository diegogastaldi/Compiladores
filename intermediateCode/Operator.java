package intermediateCode;
public enum Operator {
 	CALLINTMETHOD, ARRAYINDEX, PLUS, MINUS, MULTIPLY, DIVIDE, MOD, GE,  LE,
 	LEQ, GEQ, NOT, UNARYMINUS, AND, OR, CEQ, NEQ;
	
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
		        return "GE";
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
		        return "OR";
		    case CEQ:
		        return "CEQ";
		    case NEQ:
		        return "LE";
		}
		return null;
	}

}