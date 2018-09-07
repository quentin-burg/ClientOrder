package order;

//import client.Client;

public class Order {

	public int id;
	public static double amount;
	//public Client client;
	
	public Order(int id, double amount) {
		this.id = id;
		this.amount = amount;
	}
	
//	public void setClient(Client c) {
//		this.client = c;
//	}
	
	//public Client getClient() {
//		return this.client;
//	}
	
//	public void printOrder() {
//		System.out.println("Amount : " + amount + "for client ");
//	}

}
