public class FindAccountController {

    public String AccountName {get;set;}
    public List<Account> theseAccounts {get;set;}
    
    public FindAccountController(){
        
    }
    
    public void findAccount(){  
        AccountName+='%';
        theseAccounts = [SELECT Name, Phone, AnnualRevenue FROM Account WHERE Name LIKE :AccountName];
    }
    
}