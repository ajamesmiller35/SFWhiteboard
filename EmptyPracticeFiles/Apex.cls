trigger ContactTrigger on Contact(before insert, before update, before delete, after insert, after update, after delete, after undelete){
    if(Trigger.isBefore){
        if(Trigger.isInsert){

        }
    }
    else if(Trigger.isAfter){
        if(Trigger.isInsert){
            
        }
    }
}

Http httpReq = new Http();
HttpRequest request = new HttpRequest();

request.setMethod('GET');
request.setEndpoint('URL');

HttpResponse response = httpReq.send(request);

if(response.getStatusCode() == 200){
    //handle success
}

Http sendReq = new Http();
HttpRequest req = new HttpRequest();

req.setMethod('GET');
req.setHeader('thing', 'value');
req.setEndpoint('URL');

HttpResponse res = sendReq.send(req);

if(res.getStatusCode() == 200){
    //handle success
}

