package error;
public class Error {
    int line;
    int col;
    String desc;
    
    public Error (int l, int c, String d) {
        line = l;
        col = c;
        desc = d;
    }
    
    public String toString() {
        return ("Error en la linea "+line+", columna "+col+": "+desc);
    }
} 
