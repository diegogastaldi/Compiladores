package ir.ast;
import java.util.ArrayList;
import java.util.List;
import ir.ASTVisitor;
public class MethodCallExpr extends Expression{
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
	
	@Override
	public String toString() {
		String mc = id;
		return mc; 
	}

	@Override
	public <T> T accept(ASTVisitor<T> v) {
		return v.visit(this);
	}

} 
