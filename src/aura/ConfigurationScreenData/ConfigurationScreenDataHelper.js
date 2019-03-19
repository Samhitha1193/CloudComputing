({
	getStateButton : function(component) {
		var svBtn = component.find("saveButton");
		var schBtn = component.find("schButton");
		var runBtn = component.find("runButton");
        var getEnabled = component.get("v.mdtObject.configEnabled");
		var getConfigName = component.get("v.mdtObject.configName");
        if(getEnabled === "Yes"){
            $A.util.removeClass(runBtn, "disabled");
        }
		
		var getRecords = component.get("v.buttons");
		for(var i=0; i<getRecords.length; i++){
			if(getRecords[i].MasterLabel==="Schedule Button" && getRecords[i].Enabled__c==="Yes"){
				$A.util.removeClass(schBtn, "slds-hide");
			}
			else{
				if(getRecords[i].MasterLabel==="RunButton" && getRecords[i].Enabled__c==="Yes"){
				$A.util.removeClass(runBtn, "slds-hide");
				}
				else{
					if(getRecords[i].MasterLabel==="Save Button" && getRecords[i].Enabled__c==="Yes"){
					$A.util.removeClass(svBtn, "slds-hide");
					}
				}
			}
		}
		    if(getConfigName === "Setup Audit Trail"){
			    $A.util.addClass(runBtn, "slds-hide");
		}
		       else if(getConfigName === "Login IP Ranges"){
			    $A.util.addClass(runBtn, "slds-hide");
		}
		       else if(getConfigName === "User and Profile Management"){
			    $A.util.addClass(runBtn, "slds-hide");
		}
		       else if(getConfigName === "Group and Group Members"){
			    $A.util.addClass(runBtn, "slds-hide");
		}
		       else if(getConfigName === "Field Information"){
			    $A.util.addClass(runBtn, "slds-hide");
		}
		       else if(getConfigName === "Login History"){
			    $A.util.addClass(runBtn, "slds-hide");
		}
		       else if(getConfigName === "Permission Sets"){
			    $A.util.addClass(runBtn, "slds-hide");
		}
	},
    
    hideSaveConfirm : function(component){
		var modal = component.find('confirmsavedialog');
		var backdrop = component.find('backdropId');
		$A.util.removeClass(modal,"slds-fade-in-open");
		$A.util.removeClass(backdrop,"slds-backdrop--open");
	},

	hideScheduleModal : function(component){
		var modal = component.find('schmodaldialog');
		var backdrop = component.find('backdropId');
		$A.util.removeClass(modal,"slds-fade-in-open");
		$A.util.removeClass(backdrop,"slds-backdrop--open");
		var pillValue = component.get("v.pillValue");
		if(pillValue === "Schedule"){
		component.set("v.repeatsValue", "none");
		component.set("v.hoursValue", "00");
		component.set("v.minutesValue", "00");
		}
	},

	hideDeleteConfirm : function(component){
		var modal = component.find('confirmdeletedialog');
		var backdrop = component.find('backdropId');
		$A.util.removeClass(modal,"slds-fade-in-open");
		$A.util.removeClass(backdrop,"slds-backdrop--open");
	}
})