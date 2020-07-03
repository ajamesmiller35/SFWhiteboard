//Remember that merge and upsert are combos, so they aren't represented in the list up here, but it's a good idea to account for them ie (Trigger.isInsert && Trigger.isUpdate)
//Also all of the DML operations are included since it's best practice to have only one trigger for any given class
trigger ContactTrigger on Contact(before insert, before delete, before update,
										 after insert, after update, after delete, after undelete){
	//I don't think that they'll ask you to fill out the details for each of these, but do keep in mind that it is very important to avoid loops
	//where triggers call each other back and forth if you include DML opperations in the conditionals here.
	if(Trigger.isBefore){
		if(Trigger.isUpdate){

		} else if(Trigger.isInsert) {
		
		} else if(Trigger.isDelete) {
		
		}
	}
	else {
		if(Trigger.isUpdate){

		} else if(Trigger.isInsert) {
		
		} else if(Trigger.isDelete) {
		
		} else if(Trigger.isUndelete) {
		
		}

	}
}

//Trigger.new is the new value of the changed object that called the trigger - only available in insert, update, and undelete (what's the new value of a deleted record?)
//Trigger.old is the value of the object from before the change - only available in update and delete (prior value of an undeleted object or an inserted object is what?)