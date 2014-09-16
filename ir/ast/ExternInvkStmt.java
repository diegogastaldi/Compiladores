package ir.ast;
import java.util.ArrayList;
import java.util.List;
import ir.ASTVisitor;
public class ExternInvkStmt extends MethodCallStmt{
    private List<ArgInvoc> parameters;
    	
	public ExternInvkStmt (String id){
	    this.id = id;
	    parameters = new ArrayList<ArgInvoc>();
	}
	
	public ExternInvkStmt (String id, int line, int col){
	    this.id = id;
	    parameters = new ArrayList<ArgInvoc>();
	    lineNumber = line;
	    colNumber = col;
	}
	
	public ExternInvkStmt (String id, List<ArgInvoc> par){
	    this.id = id;
	    parameters = par;
	}
	
	public ExternInvkStmt (String id, List<ArgInvoc> par, int line, int col){
	    this.id = id;
	    parameters = new ArrayList<ArgInvoc>();
	    lineNumber = line;
	    colNumber = col;
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
