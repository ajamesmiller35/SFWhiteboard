//#12 - Programmatically create an automatic process that updates any Case that has not been modified in over 100 days
//      To 'Closed'
//Doing this through process automation - Use Process Builder
//          and select when formula evaluates to true

//Begin by creating a Scheduled Class.
global class AutomaticallyCloseCases implements Schedulable {
    //Now write the execute() method that will execute
    global void execute(SchedulableContext sc) {
        //It is recommended that all logic take place in a different class, but this works
        public static void UpdateOldCases(){
            Date old = System.Today() - 100;
            List<Case> oldCases = [SELECT Status FROM Case WHERE LastModifiedDate < :old];
            For(Case c : oldCases) {
                c.Status = 'Closed';
            }
            update oldCases;        
        }
    }    
}

//Next run this either in execute anonymous or somewhere else where it will execute
//Create a CRON Expression for the Schedule
String CRON_EXPR = '0 30 8 * * ? *';
//Instantiate the class
AutomaticallyCloseCases acc = new AutomaticallyCloseCases();
//Schedule the class
String jobID = System.schedule('Name for reference', CRON_EXPR, acc);