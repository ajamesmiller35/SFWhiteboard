    //Exposing Apex as SOAP webservices
    //has to be a global class
    //any exposed methods must be static and have the webservice keyword
    //all webservice methods must be global but the webservice keyword indicates this implicitly
    //example:
    global class MySoapWebService{
        webserivce static Id makeContact getRecord(String contactLastName, Account a){
            Contact c = new Contact(lastName = contactLastName, AccountId = a.Id);
            insert c;
            return c.id;

        }
    }
    //Then generate the WSDL that can be distributed to anyone wishing to consume
    //Any exposed method wil run in system context by default