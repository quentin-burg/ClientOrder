package order;

import client.Client;

public class Order {

	private int id;
	private double amount;
	private Client client;
	
	public Order(int id, double amount) {
		this.id = id;
		this.amount = amount;
	}
	
//	public void setClient(Client c) {
//		this.client = c;
//	}
	
	public Client getClient() {
		return this.client;
	}
	
	public void printOrder() {
		System.out.println("Amount : " + amount + "for client " + this.client);
	}

}
