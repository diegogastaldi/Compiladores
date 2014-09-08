package compiler2014;

public class simpleSymbol extends absSymbol{
	public Object value;

	public simpleSymbol(String name, Object value, String type){
	  super(name, type);
		this.value = value;
	}

	public String toString(){
	  String s = super.toString();
    return s + (", value: "+this.value);
  }
}
