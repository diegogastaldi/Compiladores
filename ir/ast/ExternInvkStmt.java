package ir.ast;
import java.util.ArrayList;
import java.util.List;
import ir.ASTVisitor;
public class ExternInvkStmt extends MethodCallStmt{
    private List<ArgInvoc> parameters;
    	
	public ExternInvkStmt (String id){
	    super(id);
	    parameters = new ArrayList<ArgInvoc>();
	}
	
	public ExternInvkStmt (String id, List<ArgInvoc> par){
	    super(id);
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
		
		if (mc.length() > 0) mc = mc.substring(0, mc.length() - 2); // remove last comma
		mc += ")";
		return mc; 
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}

} 
