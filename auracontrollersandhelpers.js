//aura controllers and helpers
//default controller
({
    myAction : function(component, event, helper){
        helper.helperMethod//calls the helper
    }
})
//component is a reference to component file, allows us to use methods like component.set()
//can be written as cmp or componenet
//Even is a reference to the event that invoked the action
//helper is a reference to the helper file
//
//Default helper
({
    helperMethod : function(){}
})
//only the system calls controller mehtods, we call helper methods
//