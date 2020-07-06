//Methods must be static and public or global
//Calling server side actions doesn't count as an API call for governor limits,
//however normal apex governor limits apply to actions performed in apex code
//It is be practice to use different names for client-side and server-side actions because sharing names between
//them can make debugging difficult.
public class WeatherController {
    
    //@auraEnabled annotation is required for Aura component controller methods
    @auraEnabled
    //must be public or global and static
    public static LocationData__c get(){
        Id thisUser = UserInfo.getUserId();
        LocationData__c x = new LocationData__c();
        
        x = [SELECT UID__c, Lat__c, Lng__c, Zip__c FROM LocationData__c WHERE UID__c=:thisUser];
        
        return x;
    }
    
}