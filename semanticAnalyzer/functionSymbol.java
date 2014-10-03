package semanticAnalyzer;
import java.util.LinkedList;
import java.util.Iterator;
import ir.ast.Type;
public class functionSymbol extends absSymbol {
    private LinkedList<absSymbol> parameters;

    public functionSymbol(String name, Type type, LinkedList<absSymbol> parameters){
		super(name, type);
		this.parameters = parameters;
	}

	public String toString(){
	    Iterator<absSymbol> it = parameters.iterator();
	    String string = new String();
	    int i = 1;
	    while (it.hasNext()) {
	        string = "parametro "+i+": "+it.next().toString();
	        i++;
	    }
        return super.toString() + (", parameters: "+string);
    }

    public LinkedList<absSymbol> getParameters() {
    	return parameters;
    }

    public void setParameters(LinkedList<absSymbol> p) {
    	parameters = p;
    }
} 
