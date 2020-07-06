//Call apex method from aura controller/helper
({
	methodToCallServer : function(component,event,helper){
		//define your action. This will take whatever serverside method you want to be using as a parameter
		//remember that the class you're getting this method from is determined by the controller value on the component declaration
		var action = component.get("c.serverControllerMethod");
		//any parameters that the method takes are defined as a JS object
		action.setParams({"anyArguements" : value});
		//format is a bit weird, just remember that callback's parameters are just (this,function), but function needs to be defined
		action.setCallback(this,function(response){
			if(response.getState()=="SUCCESS"){
				component.set("v.someViewValue",response.returnValue());
			}
		});
		//Don't forget to enqueue or this method won't do anything
		$A.enqueueAction(action);
	}
})

//general note: any time that you're referencing things like "c.serverControllerMethod" or "v.someViewValue", you don't use the {!...} notation. That's reserved for within the aura component

