//#57 Create a VisualForce controller which will query
//      budget records
//Note that Budget is not a standard object and so will need __c at the end
public class BudgetController {
    //A get method must be declared by prefixing the method name with 'get'
    public List<Budget__c> getBudgets() {
        List<Budget__c> budgets = [SELECT Id, Name FROM Budget__c];
        return budgets;
    }
}