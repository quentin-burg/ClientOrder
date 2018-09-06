package main;

import client.*;
import order.*;

public class Main {

	public static void main(String[] args) {
		Clients clients = new Clients();
		Orders orders = new Orders();
		Client c = new Client("alexia", "lille");
		clients.addClient(c);
		clients.printClients();
		Client c2 = new Client("quentine", "cassel");
		clients.addClient(c2);
		Order o = new Order(1,1.6);
		o.setClient(c2);
		c2.addOrder(o);
		clients.printClients();
	}

}
