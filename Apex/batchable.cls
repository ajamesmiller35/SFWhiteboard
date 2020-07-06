//Batch Apex is used to process large numbers of records (up to 50 milling) in small batches to avoid governor limits
//Apex class implementing Database.Batchable interface
//Must be global or public
//global (Database.QueryLocator | Iterable<sObject>) start(Database.BatchableContext bc) {}
//global void execute(Database.BatchableContext BC, list<P>){}
//global void finish(Database.BatchableContext BC){}

//Batchable Class Definition
global class BatchThis implements Database.Batchable{
    
    String x;

    //Can include constructor
    global BatchThis(String thisString){
        x = thisString;
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }

    //Optionally: 
    //global Iterable start(Database.BatchableContext info){
    //  return new CustomAccountIterable();    
    //}

    global void execute(Database.BatchableContext BC, List<sObject> scope){
        //DO STUFF. Use x here.
        update scope;
    }

    global void finish(Database.BatchableContect BC){

    }


}

//Batchable Class Execution
Integer batchSize = 5; //Max = 2000
Id BatchThisId = Database.executeBatch(new BatchThis('STRING X'), batchSize);

//Can schedule execution using System.sechduleBatch();
