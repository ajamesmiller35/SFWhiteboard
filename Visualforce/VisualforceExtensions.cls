//For Page example based on this extension see Visualforce Pages
public class PackageExtension {
    
    public Package__c p = new Package__c();
    public List<Contact> x = new List<Contact>();
    
    //Extension must contain constructor with with either ApexPages.StandardController or ApexPages.StandardSetController parameter
    //Must set a local variable of the same record type to (RecordType) Parameter.getRecord();
    public PackageExtension(ApexPages.StandardController stdCtr){
        this.p = (Package__c)stdCtr.getRecord();
    }
    
    //If setting variable value 'x' used in visualforce page, method must get named 'getX' with 'get' prepended to variable name.
    public List<Contact> getX(){
        x = [SELECT Name FROM Contact];
        return x;
    }
    
}