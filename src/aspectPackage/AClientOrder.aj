package aspectPackage;

import client.Client;
import order.Order;

public aspect AClientOrder {

	private Client Order.client;
	
	public Client Order.getClient(){
		return client;
	}
	
	public void Order.setClient(Client c){
		this.client = c;
	}
	
	pointcut delClientOrder(Order o):
		execution(void Orders.delOrder(Order))
		&& args(o);
	
	before (Order o): delClientOrder(o){
		if (o.getClient() != null) {
			o.getClient().delOrder(o);
			System.out.println("The order has been deleted");
		}
	}
	
	pointcut addClientOrder(Order o):
		execution(void Orders.addOrder(Order))
		&& args(o);
	
	before (Order o): addClientOrder(o){
		if (o.getClient() != null) {
			o.getClient().addOrder(o);
			System.out.println("The order has been added");
		}
	}
}
