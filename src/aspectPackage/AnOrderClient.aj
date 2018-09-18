package aspectPackage;

import java.util.ArrayList;
import java.util.List;

import client.Client;
import order.Order;
import client.Clients;

public aspect AnOrderClient {

	private List<Order> Client.orders = new ArrayList<Order>();
	
	public void Client.addOrder(Order o){
		orders.add(o);
		o.setClient(this);
	}
	
	public boolean Client.hasOrder(){
		return !orders.isEmpty();
	}
	
	public void Client.delOrder(Order o){
		orders.remove(o);
	}
	
	public void Client.printOrders(){
		for (Order o : orders) {
			//System.out.println("Order number " + o.id + " amount: " + o.amount + " from client " + this);
		}
	}
	
	pointcut delClientIfNoOrder(Client c):
		call (void Clients.delclient(Client))
		&& args(c);
	
	Object around (Client c): delClientIfNoOrder(c){
		//System.out.println("The client has an order ? " + c.hasOrder());
		if (c.hasOrder()) {
			//System.out.println("The client can't be deleted");
			c.printOrders(); 
		}
		else {
			//System.out.println("The client has been deleted");
			proceed(c);
		}
		return c;
	}
	
}
