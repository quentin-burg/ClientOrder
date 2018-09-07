package order;

import java.util.ArrayList;
import java.util.List;

public class Orders {

	private List<Order> orders;
	
	public Orders() {
		orders = new ArrayList<Order>();
	}
	
	public void addOrder(Order o) {
		orders.add(o);
		System.out.println("The order has been added");
	}
	
	public void delOrder(Order o) {
		orders.remove(o);
		System.out.println("The order has been deleted");
	}
}
