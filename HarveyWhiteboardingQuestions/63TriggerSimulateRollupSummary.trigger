//Trigger updates custom Number_Of_Contacts__c field on Accounts when new Contact is added. I used isAfter because it is possible the insert
//could fail.
trigger ContactTrigger on Contact (before insert, before delete, before update, after insert, after delete, after update, after undelete){

    if(Trigger.isAfter){
        if(Trigger.isInsert()){
            Account a = new Account();

            a = [SELECT Number_Of_Contacts__c FROM Account WHERE id=:Trigger.New.accountId];

            a.Number_Of_Contacts__c++;

            update a;
        }
    }

}