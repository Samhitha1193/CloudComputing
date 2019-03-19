/**
*  @Author CloudRamp LLC  
*  Copyright to CloudRamp LLC 
*  All rights Reserved
*/

({
	doInit : function(component, event, helper) {
        helper.doInit(component, event);
	},

	saveRecord : function(component, event, helper){
		var spinner = component.find("spinner");
        $A.util.addClass(spinner, 'slds-show');
		var toastEvent = $A.get("e.force:showToast");
		var action = component.get("c.saveObjects");
		var gtEvt = event.getParam("record");
		var repeats = event.getParam("repeats");
		var hours = event.getParam("hours");
		var minutes = event.getParam("minutes");
		action.setParams({"obj": gtEvt, "repeats": repeats, "hours": hours, "minutes": minutes});
		action.setCallback(this, function(response){
			var state = response.getState();
			if(component.isValid() && state === "SUCCESS"){
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "success",
					"title": "Success!",
					"message": "The record has been updated successfully."
				});
			}
			else{
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "error",
					"title": "Oops!",
					"message": "The record failed to update."
				});
			}
    toastEvent.fire();
		});
		$A.enqueueAction(action);
        helper.doInit(component, event);
	},

	saveScheduler : function(component, event, helper){
		var spinner = component.find("spinner");
        $A.util.addClass(spinner, 'slds-show');
		var toastEvent = $A.get("e.force:showToast");
		var action = component.get("c.saveSchedule");
		var record = event.getParam("record");
		var repeats = event.getParam("repeats");
		var hours = event.getParam("hours");
		var minutes = event.getParam("minutes");
		action.setParams({"obj": record, "repeats": repeats, "hours": hours, "minutes": minutes});
		action.setCallback(this, function(response){
			var state = response.getState();
			if(component.isValid() && state === "SUCCESS"){
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "success",
					"title": "Success!",
					"message": "Scheduled successfully."
				});
			}
			else{
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "error",
					"title": "Oops!",
					"message": "Schedule failed."
				});
			}
    toastEvent.fire();
		});
		$A.enqueueAction(action);
        event.stopPropagation();
        helper.doInit(component, event);
	},

	deleteScheduler : function(component, event, helper){
		var spinner = component.find("spinner");
        $A.util.addClass(spinner, 'slds-show');
		var toastEvent = $A.get("e.force:showToast");
		var action = component.get("c.deleteSchedule");
		var gtEvt = event.getParam("record");
		action.setParams({"obj": gtEvt});
		action.setCallback(this, function(response){
			var state = response.getState();
			if(component.isValid() && state === "SUCCESS"){
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "success",
					"title": "Success!",
					"message": "Schedule deleted successfully."
				});
			}
			else{
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "error",
					"title": "Oops!",
					"message": "Schedule delete failed."
				});
			}
    toastEvent.fire();
		});
		$A.enqueueAction(action);
	},

	runRecord : function(component, event, helper){
		var spinner = component.find("spinner");
        $A.util.addClass(spinner, 'slds-show');
		var toastEvent = $A.get("e.force:showToast");
		var action = component.get("c.runQueueables");
		var gtEvt = event.getParam("record");
		var data = JSON.parse(gtEvt);
		action.setParams({"obj": gtEvt});
		action.setCallback(this, function(response){
			var state = response.getState();
			if(component.isValid() && state === "SUCCESS"){
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "success",
					"title": "Success!",
					"message": data.configName + " " + "request submitted successfully."
				});
			}
			else{
				$A.util.removeClass(spinner, 'slds-show');
				toastEvent.setParams({
					"type": "error",
					"title": "Oops!",
					"message": "The configuration run failed."
				});
			}
    toastEvent.fire();
		});
		$A.enqueueAction(action);
	}
})