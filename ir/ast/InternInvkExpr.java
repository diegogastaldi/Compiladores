package ir.ast;
import java.util.ArrayList;
import java.util.List;
import ir.ASTVisitor;
public class InternInvkExpr extends MethodCallExpr{
	protected List<Expression> parameters;
	
	public InternInvkExpr (String id){
	    this.id = id;
	    parameters = new ArrayList<Expression>();
	}
	
	public InternInvkExpr (String id, List<Expression> par){
	    this.id = id;
	    parameters = par;
	}
	
	public InternInvkExpr (String id, List<Expression> par, Type t){
	    this.id = id;	
	    type = t;
	    parameters = par;
	}
	
	public InternInvkExpr (String id, List<Expression> par, Type t, int line, int col){
	    this.id = id;
	    this.type = t;
	    parameters = par;
	    lineNumber = line;
	    colNumber = col;	
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
		
		if (mc.length() > 0) mc = mc.substring(0, mc.length() - 2); // remove last comma
		mc += ")";
		return mc; 
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}

} 
