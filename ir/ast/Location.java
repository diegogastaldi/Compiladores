package ir.ast;

public abstract class Location extends Expression {
	protected String id;
	protected Integer offset;
	protected Boolean isGlobal;

	public void setId(String id) {
		this.id = id;
	}
	
	public String getId() {
		return id;
	}

	public Integer getOffSet() {
		return offset;
	}

	public void setOffSet(Integer i) {
		offset = i;
	}	

	public Boolean getIsGlobal() {
		return isGlobal;
	}
}
