package aspectPackage;

import client.Client;

public aspect AClientOrder {

	private Client client;
	
	pointcut setClient(Client c) :
		call (void *.setClient(..));
	
	before(): setClient(c) {
		this.client = c;
	}
}
