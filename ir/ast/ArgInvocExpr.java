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
    
    @Override
    public String toString() {
        return expr.toString();
    }
    
}

