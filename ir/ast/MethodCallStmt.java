package ir.ast;
import java.util.ArrayList;
import java.util.List;
import ir.ASTVisitor;
public class MethodCallStmt extends Statement {
	protected String id;
	protected List<Expression> parameters;
	
	public MethodCallStmt (String id){
	    this.id = id;
	    parameters = new ArrayList<Expression>();
	}
	
	public MethodCallStmt (String id, List<Expression> par){
	    this.id = id;
	    parameters = par;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getId() {
		return id;
	}
	
	public void setParameters(List<Expression> par) {
		this.parameters = par;
	}
	
	public List<Expression> getParameters() {
		return parameters;
	}
	
	public void addParamaters(Expression e) {
	    parameters.add(e);
	}
	
	@Override
	public String toString() {
		String mc = id+"(";
		
	    for (Expression e: parameters) {
			mc += e.toString()+", ";
		}
		
		if (mc.length() > 0) return mc.substring(0, mc.length() - 2); // remove last comma
		
		return mc; 
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}

} 
