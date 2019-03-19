/**
*  @Author CloudRamp LLC  
*  Copyright to CloudRamp LLC 
*  All rights Reserved
*/

({
	doInit : function(component, event, helper){
        var getEnabled = component.get("v.mdtObject.configEnabled");
        if(getEnabled === "Yes"){
            var pillDisable = component.find('schButton');
            $A.util.removeClass(pillDisable, "disabled");
            var pillAnch = component.find('schAnchor');
            $A.util.removeClass(pillAnch, "disabled");
            var pillClose = component.find('schClose');
            $A.util.removeClass(pillClose, "disabled");
        }
		var getRepeats = component.get("v.mdtObject.configRepeats");
		var getHours = component.get("v.mdtObject.configHours");
		var getMinutes = component.get("v.mdtObject.configMinutes");
		if(getRepeats !== undefined){
			component.set("v.pillValue", getRepeats+" "+getHours+":"+getMinutes);
			component.set("v.repeatsValue", getRepeats);
			component.set("v.hoursValue", getHours);
			component.set("v.minutesValue", getMinutes);
		}
		else{
			component.set("v.pillValue", "Schedule");
			component.set("v.repeatsValue", "none");
			component.set("v.hoursValue", "00");
			component.set("v.minutesValue", "00");
		}

		var pillValue = component.get("v.pillValue");
		if(pillValue === "Schedule"){
            var pillClose = component.find('schClose');
            $A.util.addClass(pillClose, "disabled");
		}

		var action = component.get("c.buttonState");
		action.setCallback(this, function(response){
			var state = response.getState();
			if(component.isValid() && state === "SUCCESS"){
				component.set("v.buttons", response.getReturnValue());
				helper.getStateButton(component);
			}
			else{

			}
		});
		$A.enqueueAction(action);
	},

	saveRecord : function(component, event, helper) {
        var getEnabled = component.get("v.mdtObject.configEnabled");
        var configState = component.get("v.mdtObject.configRepeats");
		var pillValue = component.get("v.pillValue");
        if(configState !== undefined && getEnabled === "No" && pillValue !== "Schedule"){
            var modal = component.find('confirmsavedialog');
            var backdrop = component.find('backdropId');
            $A.util.addClass(backdrop,"slds-backdrop--open");
            $A.util.addClass(modal,"slds-fade-in-open");
        }
        else{
        if(getEnabled === "Yes"){
            var runDisable = component.find('runButton');
            $A.util.removeClass(runDisable, "disabled");
            var pillDisable = component.find('schButton');
            $A.util.removeClass(pillDisable, "disabled");
            var pillAnch = component.find('schAnchor');
            $A.util.removeClass(pillAnch, "disabled");
            var pillClose = component.find('schClose');
            $A.util.removeClass(pillClose, "disabled");
        }
        else{
            var runDisable = component.find('runButton');
            $A.util.addClass(runDisable, "disabled");
            var pillDisable = component.find('schButton');
            $A.util.addClass(pillDisable, "disabled");
            var pillAnch = component.find('schAnchor');
            $A.util.addClass(pillAnch, "disabled");
            var pillClose = component.find('schClose');
            $A.util.addClass(pillClose, "disabled");
            
            component.set("v.repeatsValue", "none");
            component.set("v.hoursValue", "00");
            component.set("v.minutesValue", "00");
            component.set("v.pillValue", "Schedule");
        }
        
		var getRecord = component.get("v.mdtObject");
		var record = JSON.stringify(getRecord);
		var getRepeats = component.get("v.repeatsValue");
		var getHours = component.get("v.hoursValue");
		var getMinutes = component.get("v.minutesValue");
		var gtEvt = component.getEvent("saveRecord");
		gtEvt.setParams({"record": record, "repeats": getRepeats, "hours": getHours, "minutes": getMinutes});
		gtEvt.fire();
        }
	},

	saveRecordFrmModal : function(component, event, helper) {
        var getEnabled = component.get("v.mdtObject.configEnabled");
        if(getEnabled === "Yes"){
            var runDisable = component.find('runButton');
            $A.util.removeClass(runDisable, "disabled");
            var pillDisable = component.find('schButton');
            $A.util.removeClass(pillDisable, "disabled");
            var pillAnch = component.find('schAnchor');
            $A.util.removeClass(pillAnch, "disabled");
            var pillClose = component.find('schClose');
            $A.util.removeClass(pillClose, "disabled");
        }
        else{
            var runDisable = component.find('runButton');
            $A.util.addClass(runDisable, "disabled");
            var pillDisable = component.find('schButton');
            $A.util.addClass(pillDisable, "disabled");
            var pillAnch = component.find('schAnchor');
            $A.util.addClass(pillAnch, "disabled");
            var pillClose = component.find('schClose');
            $A.util.addClass(pillClose, "disabled");
            
            component.set("v.repeatsValue", "none");
            component.set("v.hoursValue", "00");
            component.set("v.minutesValue", "00");
            component.set("v.pillValue", "Schedule");
        }
        
		var getRecord = component.get("v.mdtObject");
		var record = JSON.stringify(getRecord);
		var getRepeats = component.get("v.repeatsValue");
		var getHours = component.get("v.hoursValue");
		var getMinutes = component.get("v.minutesValue");
		var gtEvt = component.getEvent("saveRecord");
		gtEvt.setParams({"record": record, "repeats": getRepeats, "hours": getHours, "minutes": getMinutes});
		gtEvt.fire();
        helper.hideSaveConfirm(component);
	},

    saveScheduler : function(component, event, helper){
		var getRecord = component.get("v.mdtObject");
		var record = JSON.stringify(getRecord);
		var getRepeats = component.get("v.repeatsValue");
		var getHours = component.get("v.hoursValue");
		var getMinutes = component.get("v.minutesValue");
		if(getRepeats !== "none"){
		component.set("v.pillValue", getRepeats+" "+getHours+":"+getMinutes);
		}
		var gtEvt = component.getEvent("saveScheduler");
		gtEvt.setParams({"record": record, "repeats": getRepeats, "hours": getHours, "minutes": getMinutes});
		gtEvt.fire();
		helper.hideScheduleModal(component);
	},

	deleteScheduler : function(component, event, helper){
		var getRecord = component.get("v.mdtObject");
		var record = JSON.stringify(getRecord);
		component.set("v.repeatsValue", "none");
		component.set("v.hoursValue", "00");
		component.set("v.minutesValue", "00");
		component.set("v.pillValue", "Schedule");
		var gtEvt = component.getEvent("deleteScheduler");
		gtEvt.setParams({"record": record});
		gtEvt.fire();
		var pillValue = component.get("v.pillValue");
		if(pillValue === "Schedule"){
            var pillClose = component.find('schClose');
            $A.util.addClass(pillClose, "disabled");
		}
		var repeats = component.get("v.repeatsValue");
		var schDelete = component.find('schdialogdelete');
		if(repeats !== 'none'){
            $A.util.removeClass(schDelete, "disabled");
		}
		else{
            $A.util.addClass(schDelete, "disabled");
		}		
	},

		deletePillScheduler : function(component, event, helper){
		var getRecord = component.get("v.mdtObject");
		var record = JSON.stringify(getRecord);
		component.set("v.repeatsValue", "none");
		component.set("v.hoursValue", "00");
		component.set("v.minutesValue", "00");
		component.set("v.pillValue", "Schedule");
		var gtEvt = component.getEvent("deleteScheduler");
		gtEvt.setParams({"record": record});
		gtEvt.fire();
		var pillValue = component.get("v.pillValue");
		if(pillValue === "Schedule"){
            var pillClose = component.find('schClose');
            $A.util.addClass(pillClose, "disabled");
		}
		var repeats = component.get("v.repeatsValue");
		var schDelete = component.find('schdialogdelete');
		if(repeats !== 'none'){
            $A.util.removeClass(schDelete, "disabled");
		}
		else{
            $A.util.addClass(schDelete, "disabled");
		}
		helper.hideDeleteConfirm(component);
	},

	runRecord : function(component, event, helper) {
		var getRecord = component.get("v.mdtObject");
		var record = JSON.stringify(getRecord);
		var gtEvt = component.getEvent("runRecord");
		gtEvt.setParams({"record": record});
		gtEvt.fire();
		var modal = component.find('confirmrundialog');
		var backdrop = component.find('backdropId');
		$A.util.removeClass(modal,"slds-fade-in-open");
		$A.util.removeClass(backdrop,"slds-backdrop--open");
	},

	showScheduleModal : function(component, event, helper){
		var modal = component.find('schmodaldialog');
		var backdrop = component.find('backdropId');
		$A.util.addClass(backdrop,"slds-backdrop--open");
		$A.util.addClass(modal,"slds-fade-in-open");

		var repeats = component.get("v.repeatsValue");
		if(repeats !== 'none'){
			var schDelete = component.find('schdialogdelete');
            $A.util.removeClass(schDelete, "disabled");
		}
	},

	hideScheduleModal : function(component, event, helper){
		helper.hideScheduleModal(component);
	},

	showRunConfirm : function(component, event, helper){
		var modal = component.find('confirmrundialog');
		var backdrop = component.find('backdropId');
		$A.util.addClass(backdrop,"slds-backdrop--open");
		$A.util.addClass(modal,"slds-fade-in-open");
	},

	hideRunConfirm : function(component, event, helper){
		var modal = component.find('confirmrundialog');
		var backdrop = component.find('backdropId');
		$A.util.removeClass(modal,"slds-fade-in-open");
		$A.util.removeClass(backdrop,"slds-backdrop--open");
	},

	showDeleteConfirm : function(component, event, helper){
		var modal = component.find('confirmdeletedialog');
		var backdrop = component.find('backdropId');
		$A.util.addClass(backdrop,"slds-backdrop--open");
		$A.util.addClass(modal,"slds-fade-in-open");
	},

	hideDeleteConfirm : function(component, event, helper){
		helper.hideDeleteConfirm(component);
	},
    
    hideSaveConfirm : function(component, event, helper){
		helper.hideSaveConfirm(component);
	}
})