//Allows Apex to be scheduled for future execution
//Create schedulable apex classes by implementing Schedulable interface
//MUST ONLY INCLUDE execute METHOD

//Define schedulable class
global class ScheduleThis implements Schedulable {
    global void execute(SchedulableContext context){
        List<Opportunity> opptys = [SELECT Id, Name, OwnerId, CloseDate 
            FROM Opportunity 
            WHERE IsClosed = False AND 
            CloseDate < TODAY];
        // Create a task for each opportunity in the list
        TaskUtils.remindOwners(opptys);

    }
}

//Schedule execution using System.Schedule()
ScheduleThis job = new ScheduleThis();

String timeToExecute = '20 30 8 10 2 ?'; //CRON expression

String jobId = System.Schedule('JOB NAME', timeToExecute, job);

