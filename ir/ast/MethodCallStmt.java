package ir.ast;

public abstract class MethodCallStmt extends Statement {
	protected String id;
	
	public MethodCallStmt (String id){
	    this.id = id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getId() {
		return id;
	}
} 
