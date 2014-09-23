public abstract class Operand {
    public String name;
    public Type type;
  
    public Operan (String name, Type type) {
        this.name = name;
        this.type = type;
    }
  
    public String toString(){
       return ("name: "+name) + (", type: "+type.toString()+";");
    }


} 
