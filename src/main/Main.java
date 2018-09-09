package main;

import client.*;
import order.*;

public class Main {

	public static void main(String[] args) {
		
		Clients clients = new Clients();
		Orders orders = new Orders();
		
		Client c1 = new Client("toto", "dreamland");
		Client c2 = new Client("titi", "tototown");
		Order o1 = new Order(12, 90.3);
		Order o2 = new Order(3, 43.1);
		
		c2.addOrder(o1);
		
		clients.addClient(c1);
		clients.addClient(c2);
		
		orders.addOrder(o1);
		orders.addOrder(o2);
		
		clients.delclient(c1);
	
		c2.addOrder(o1);
		
		clients.delclient(c2);
	}

}
