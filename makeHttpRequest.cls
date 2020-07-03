//IMPORTANT: The notes on this material are not correct. This logic needs to be within a method. It cannot just float within a class
public static void apexCalloutMethod(){
	Http httpController = new Http();
	HttpRequest request = new HttpRequest();
	//optionally request.setHeader(key,value); amongst other possible set methods
	request.setMethod('GET');
	//It's probably a good idea to mention that you'll need to whitelist the URL that you're calling. Make Harvey happy.
	request.setEndpoint('https://aRealAPIbenIswear.com/api/thingy');
	//In order to get a response, you need to use the send method on your http object, you don't just create a response
	HttpResponse response = httpController.send(request);
	if(response.getStatusCode()==200){
		anotherMethodToDoThings(response.getBody());
	}
}
