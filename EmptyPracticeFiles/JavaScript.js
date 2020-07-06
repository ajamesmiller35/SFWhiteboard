let req = new XMLHttpRequest();

req.onreadystatechange(function(res){
    if(this.readyState == 4 && this.status == 200){
        //handle success
    }
    else{

    }
});

req.open('TYPE', 'URL', true);
req.send();

({
    callApex : function(component, event, helper){
        let apx = component.get('c.apexMethod');

        apx.setParams({param1: 'Param1'});

        apx.setCallback(this, function(res){
            if(req.getState() == 'SUCCESS'){
                //handle success
            }
            else{

            }
        });

        $A.enqueueAction(apx);
    }
})