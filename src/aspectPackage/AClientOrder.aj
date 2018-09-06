package aspectPackage;

import client.Client;
import order.Order;

public aspect AClientOrder {

	private Client Order.client;
	public void Order.setClient(Client c) { this.client = c; }
	
	// before call setClient => mettre setClient
}
