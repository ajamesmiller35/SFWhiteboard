//Must implement HttpCalloutMock Interface

@IsTest
global class CallMock implements HttpCalloutMock { 
    global HttpResponse respond(HttpRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"status":"SUCCESS"}');
        res.setStatusCode(200);
        return res;
    }
}



@IsTest
private class TestFutureMethod{
    @IsTest
    private static void testMakeCall(){
        Test.setMock(HttpCalloutMock.class, new CallMock());
        Test.startTest();
            FutureMethod.makeCall();
        Test.stopTest();

        //Because future methods cannot return a value (they must be void) check database for indications that our method was successful.
        List<Stuff__c> stuff = [SELECT Id FROM Stuff__c];
        System.assertEquals(10, stuff.size());
    }
}