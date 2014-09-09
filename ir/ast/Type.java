package ir.ast;

public enum Type {
	INT,
	INTARRAY,
	VOID,
	FLOAT,
	FLOATARRAY,
	BOOLEAN,
	BOOLEANARRAY,
	UNDEFINED;
	
	@Override
	public String toString() {
		switch(this) {
			case INT:
				return "int";
			case VOID:
				return "void";
			case UNDEFINED:
				return "undefined";
			case INTARRAY:
				return "int[]";
		    case FLOAT:
		        return "float";
		    case FLOATARRAY:
		        return "float[]";
		    case BOOLEAN:
		        return "boolean";
		    case BOOLEANARRAY:
		        return "boolean[]";
		}
		return null;
	}
	
	public boolean isArray() {
		if ((this == Type.INTARRAY) && (this == Type.BOOLEANARRAY) && (this == Type.FLOATARRAY)) {
			return true;
		}		
		return false;
	}
}
