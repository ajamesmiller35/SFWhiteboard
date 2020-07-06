//Future methods are used to asynchronously run apex code
//Callout from a trigger or after DML operations must use @future
//Identified using @future annotation
//Must be static void
//Only accepts primitive data types, for this reason it is common to pass a list of Ids instead of actual sObjects.
    //This is because since the method is asynchronous, a record could change between the time the method is called and when it is processed

public class FutureMethod{
    @future(callout=true)//must include (callout=true if making callout to external service)
    public static void makeCall(){

    }
}

//To test future methods, ensure test code falls between Test.startTest() and Test.stopTest(). This is necessary since the methods must be executed
//syncronously for the purposes of the test (otherwise our System.assert() tests will fail.)

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