//#59 - Create a trigger that updates a field based on another field's value
//Note that this needs to be a Before trigger because After triggers happen after
//          the record was saved but not committed, and so the record would be 
//          locked and fields would no longer be able to be updated
Trigger UpdateFIeldTrigger on SObject(before insert, before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert || Trigger.isUpdate) {
            //Since we do not have specification on what logic needs to be performed
            // for the field updates, I will just call a fake method from a fake class
            FakeClass.UpdateFieldAfterConditionsAreMet(Trigger.New);
        }
    }
}