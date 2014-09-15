package ir.semcheck;

import java.util.ArrayList;
import java.util.List;

import ir.ASTVisitor;
import ir.ast.*;
//import error.Error; // define class error


// type checker, concrete visitor 
public class TypeCheckVisitor implements ASTVisitor<Type> {
/*	
	private List<Error> errors;
*/
    // visit statements    
    @Override
	public Type visit(AssignStmt stmt){
        //Esta clase es abstracta. ¿Que se hace?
        return null;	
	}
	
	@Override
	public Type visit(IncrementAssign stmt){
        return null;	
	}
	
	@Override
	public Type visit(DecrementAssign stmt){
        return null;	
	}
	
	@Override
	public Type visit(SimpleAssign stmt){
        return null;	
	}
	
	@Override
	public Type visit(ReturnStmt stmt){
        return null;	
	}
	
	@Override
	public Type visit(IfStmt stmt){
        return null;	
	}
	
	@Override
	public Type visit(WhileStmt stmt){	
        return null;	
	}
	
	@Override
    public Type visit(Block stmt){
        return null;    
    }
    
    @Override
    public Type visit(ContinueStmt stmt){
        return null;    
    }
    
    @Override
    public Type visit(BreakStmt stmt){
        return null;    
    }
    
    @Override
    public Type visit(CycleStmt stmt){
        //Esta clase es abstracta. ¿Que se hace?
        return null;    
    }
    
    @Override
    public Type visit(ForStmt stmt){
        return null;    
    }
    
    @Override
    public Type visit(SemiColon stmt){
        return null;    
    }
    
    @Override
	public Type visit(MethodCallStmt stmt){	
        //Esta clase es abstracta. ¿Que se hace?
        return null;	
	}
	
	@Override
	public Type visit(InternInvkStmt stmt){	
        return null;	
	}
	
	@Override
	public Type visit(ExternInvkStmt stmt){
        return null;    
    }
    
    // visit expressions
    @Override
	public Type visit(BinOpExpr expr){
        //Esta clase es abstracta. ¿Que se hace?
        return null;	
	}
	
	@Override
	public Type visit(NegativeExpr expr){
	    if (expr.getExpression().getType()==Type.INT) 
            return Type.INT;	
        else
            /*Error*/ return null;
	}
	
	@Override
	public Type visit(NegationExpr expr){
	    if (expr.getExpression().getType()==Type.BOOLEAN) 
            return Type.BOOLEAN;	
        else
            /*Error*/ return null;
	}
	
	@Override
	public Type visit(RelExpr expr){
	    Expression l = expr.getRightOperand();
	    Expression r = expr.getLeftOperand();
	    if (l.getType()==Type.INT && r.getType()==Type.INT) 
            return Type.BOOLEAN;	
        else 
            /*Error*/ return null;

	}
	
	@Override
	public Type visit(ArithExpr expr){
	    Expression l = expr.getRightOperand();
	    Expression r = expr.getLeftOperand();
	    if (l.getType()==Type.INT && r.getType()==Type.INT) 
            return Type.INT;	
        else 
            /*Error*/ return null;

	}
	
	@Override
	public Type visit(CondExpr expr){	
	    Expression l = expr.getRightOperand();
	    Expression r = expr.getLeftOperand();
	    if (l.getType()==Type.BOOLEAN && r.getType()==Type.BOOLEAN) 
            return Type.BOOLEAN;	
        else 
            /*Error*/ return null;
	}
	
	@Override
	public Type visit(EqExpr expr){
	    Expression l = expr.getRightOperand();
	    Expression r = expr.getLeftOperand();
	    if (l.getType()==Type.BOOLEAN && r.getType()==Type.BOOLEAN) 
            return Type.BOOLEAN;	
        else 
            /*Error*/ return null;
    }
    
    @Override
	public Type visit(InParentExpr expr){
        return expr.getType();	
	}
	
	@Override
	public Type visit(MethodCallExpr expr){
        //Esta clase es abstracta. ¿Que se hace?
        return null;	
	}
	
	@Override	
	public Type visit(InternInvkExpr expr){
        return expr.getType();	
	}
	
	@Override
	public Type visit(ExternInvkExpr expr){
        return expr.getType();
	}
	
    // visit literals	
    @Override
	public Type visit(IntLiteral lit){
        return Type.INT;	
	}
	
	@Override
	public Type visit(FloatLiteral lit){
        return Type.FLOAT;	
	}
	
	@Override
	public Type visit(BoolLiteral lit){		
        return Type.BOOLEAN;		
    }
    
    // visit locations	
    @Override
	public Type visit(VarLocation loc){
        return loc.getType();	
	}
	
	@Override
	public Type visit(ArrayLocation loc){
        return loc.getType();
    }
/*    
	private void addError(AST a, String desc) {
		errors.add(new Error(a.getLineNumber(), a.getColumnNumber(), desc));
	}

	public List<Error> getErrors() {
		return errors;
	}

	public void setErrors(List<Error> errors) {
		this.errors = errors;
	}
*/
}
