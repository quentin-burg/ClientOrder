package aspectPackage;

import java.util.ArrayList;

import utils.DSFields;

public aspect SequencyDiagramASCII {
	private ArrayList<DSFields> fields = new ArrayList<DSFields>();
	pointcut printcall(): call(* client..*.*(..)) || call(* order..*.*(..)) || call(client.Clients.new()) || call(order.Orders.new());
	Object around() : printcall() {
		DSFields f = new DSFields(thisJoinPoint.getSourceLocation().getFileName(), thisJoinPoint.getSignature().getName(), (thisJoinPoint.getTarget() + "").split("@")[0]);
		fields.add(f);
		Object ret = proceed();
		return ret;
	}
	pointcut printArray() : execution(* main.Main.main(..));
	after() : printArray() {		
		for (DSFields f : fields) {
			System.out.println(f);
		}
	}
}