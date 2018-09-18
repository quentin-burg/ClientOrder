package aspectPackage;

public aspect Singleton {


 pointcut singletonPointcutClient() : call(client.Clients.new());
 pointcut singletonPointcutOrder() : call(order.Orders.new());
 private Object singletonClients;
 private Object singletonOrders;
 Object around(): singletonPointcutClient() {
	 //System.out.println("Clients creation");
	 if (singletonClients == null) {
		 singletonClients = proceed();
	}
	return singletonClients;
 }
 Object around() : singletonPointcutOrder() {
	 //System.out.println("Orders creation");
	 if (singletonOrders == null) {
		 singletonOrders = proceed();
	}
	return singletonOrders;
 }
}