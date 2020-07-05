//An example for how to share a record programmatically in Apex
//This example in the documentation uses the 'Job' custom object so 
//  I'm using the same thing.
//Basically, You create the share instance, then you set the parentId as the 
//      specific record you want to share, you set the User or Group Id for the
//      User or Group you are trying to share it with, and then you set the access
//      level you are trying to provide. 
//      After all that you have to insert the Object__Share into the Database and 
//          you should have access
public class JobSharing {
    public static boolean manualShareRead(Id RecordId, Id UserOrGroupId) {
        //Create the new sharing object
        Job__Share js = new Job__Share();

        //Set the Id of the Record you want to share as a parent of the share object
        js.ParentId = RecordId;

        //Set the User Id of whoever you are trying to share the record with through the UserORGroupId
        js.UserORGroupId = UserOrGroupId;

        //Set the access level you are trying to give, in this case 'read'
        js.AccessLevel = 'Read';

        //By default, the rowCause value is set to 'manual', but it can be set like so
        js.RowCause = Schema.Job__Share.RowCause.Manual;
        //Otherwise you can specify your own rowCause to be able to determine why the record
        //      was shared

        //Sharing record must be inserted into the DataBase
        DataBase.saveResult sr = Database.insert(js, false);

        //Return the success or failure of the operation
        if(sr.isSuccess()) {
            return true;
        } else {
            return false;
        }
    }

}