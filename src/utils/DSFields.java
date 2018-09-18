package utils;

public class DSFields {

	private String caller;
	private String method;
	private String target;
	
	public DSFields(String caller, String method, String target) {
		this.caller = caller;
		this.method = method;
		this.target = target;
	}
	
	public String getCaller() {
		return caller;
	}
	public void setCaller(String caller) {
		this.caller = caller;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	
	public String toString() {
		return "appelant : " + this.getCaller() + " ; methode : " + this.getMethod() + " ; appelé : " + this.getTarget();
	}
}
