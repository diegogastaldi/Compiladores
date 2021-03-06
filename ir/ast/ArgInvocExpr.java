package ir.ast;
import ir.ASTVisitor;

public class ArgInvocExpr extends ArgInvoc {
    private Expression expr;
    
    public ArgInvocExpr(Expression e) {
        expr = e;
    }
    
    public Expression getExpression() {
        return expr;
    }
    
    public void setExpression(Expression e) {
        expr = e;
    }

    @Override
    public String toString() {
        return expr.toString();
    }
    
}

