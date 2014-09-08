package compiler2014;
import java.util.LinkedList;
public class arraySymbol extends absSymbol {
  public Integer size;
  public LinkedList<Object> values;
  
 	public arraySymbol(String name, String type, Integer size, LinkedList<Object> values){
 	  super(name, type);
		this.size = size;
		this.values = values;
	}

	public String toString(){
	  
    return super.toString() + (", size: "+this.size) + (", values: "+values.toString());
  }

} 


