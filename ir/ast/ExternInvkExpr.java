package ir.ast;
import java.util.ArrayList;
import java.util.List;
import ir.ASTVisitor;
public class ExternInvkExpr extends MethodCallExpr{
    private List<ArgInvoc> parameters;
    	
	public ExternInvkExpr (String id){
	    super(id);
	    parameters = new ArrayList<ArgInvoc>();
	}
	
	public ExternInvkExpr (String id, List<ArgInvoc> par){
	    super(id);
	    parameters = par;
	}
	
	public ExternInvkExpr (String id, List<ArgInvoc> par, Type t){
	    super(id, t);
	    parameters = par;
	}
	
	public void setParameters(List<ArgInvoc> par) {
		this.parameters = par;
	}
	
	public List<ArgInvoc> getParameters() {
		return parameters;
	}
	
	public void addParamaters(ArgInvoc e) {
	    parameters.add(e);
	}
	
	@Override
	public String toString() {
		String mc = id+"(";
		
	    for (ArgInvoc e: parameters) {
			mc += e.toString()+", ";
		}
		
		if (mc.length() > 0) return mc.substring(0, mc.length() - 2); // remove last comma
		mc += ")";
		return null; 
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}

} 
