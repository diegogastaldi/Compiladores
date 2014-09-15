package ir.ast;
import ir.ASTVisitor;

public class ArgInvocSL extends ArgInvoc {
    private String s;
    
    public ArgInvocSL(String s) {
        this.s = s;
    }
    
    @Override
    public String toString() {
        return s;
    }
}

