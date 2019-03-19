({
	doInit : function(component, event) {
		var action = component.get("c.getMetaData");
        var spinner = component.find("spinner");
		action.setCallback(this, function(response){
			var state = response.getState();		
			if(component.isValid() && state === "SUCCESS"){
		        $A.util.addClass(spinner, "slds-hide");
				component.set("v.mdtObjects", response.getReturnValue());
			}
			else{
                $A.util.addClass(spinner, "slds-hide");
				var toastEvent = $A.get("e.force:showToast");
				toastEvent.setParams({
					"type": "error",
					"title": "Oops!",
					"message": "The operation failed."
				});
    toastEvent.fire();
			}
		});
		$A.enqueueAction(action);
	}
})