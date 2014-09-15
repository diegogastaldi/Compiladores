package ir.ast;

public abstract class MethodCallExpr extends Expression{
	protected String id;
	
	public MethodCallExpr (String id){
	    this.id = id;
	}
	
	public MethodCallExpr (String id, Type t){
	    type = t;
	    this.id = id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getId() {
		return id;
	}

} 
