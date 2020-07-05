
public class PackageCustomController {
    
    public List<Contact> x = new List<Contact>();
    public List<Package__c> p = new List<Package__c>();
    
    //To set value for variable 'x' as referenced in Visualforce page, method must be named 'getX' with 'get' prepended to the method name
    public List<Contact> getX(){
        x = [SELECT Name FROM Contact];
        return x;
    }
    
    public List<Package__c> getP(){
        p = [SELECT Name FROM Package__c];
        return p;
    }

}