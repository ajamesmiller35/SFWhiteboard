//Can accept non-primitive types as parameters
//jobs can be chained
//To use Queueable apex, implement the Queueable interface and include public void execute method with QueueableContext parameter

//Define queueable class:
public class QueueThis implements Queueable {
    
    private String s;

    public QueueThis(String thisS){
        this.s = thisS;
    }
    
    public void execute(QueueableContext context){
        //Do stuff
    }
}

//Execute queuable apex (Use System.enqueueJob(job)):

QueueThis job = new QueueThis('String');

Id jobId = System.enqueueJob(job); //Returned Id can be used to track job

//Monitor Queuable progress:

SELECT Id, Status, NumberOfErrors FROM AsyncApexJob WHERE Id = :jobID