package ir.ast;
import java.util.ArrayList;
import java.util.List;
import ir.ASTVisitor;
public class InternInvkExpr extends MethodCallExpr{
	protected List<Expression> parameters;
	
	public InternInvkExpr (String id){
	    super(id);
	    parameters = new ArrayList<Expression>();
	}
	
	public InternInvkExpr (String id, List<Expression> par){
	    super(id);
	    parameters = par;
	}
	
	public InternInvkExpr (String id, List<Expression> par, Type t){
	    super(id, t);
	    parameters = par;
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
