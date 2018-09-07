package client;

import java.util.ArrayList;
import java.util.List;

public class Clients {
	
	List<Client> clients;
	
	public Clients() {
		this.clients = new ArrayList<Client>();
	}

	public void addClient(Client c) {
		this.clients.add(c);
		System.out.println("The client has been added");
	}
	
	public void delclient(Client c) {
		this.clients.remove(c);
		System.out.println("The client has been deleted");
	}
	
	public void printClients() {
		for (Client c : this.clients) {
			System.out.println("Name : " + c.name + "; Address : " + c.address);
		}
	}
}