package compiler2014;
public abstract class absSymbol {
  public String name;
  public String type;
  
  public absSymbol (String name, String type) {
    this.name = name;
    this.type = type;
  }
  
 	public String toString(){
    return ("name: "+this.name) + (", type: "+this.type+";");
  }

} 
