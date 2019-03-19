/**
*  @Author CloudRamp LLC  
*  Copyright to CloudRamp LLC 
*  All rights Reserved
*/

public with sharing class ConfigurationScreen {
        
    public class Configurators {
        @AuraEnabled public String configName {get; set;}
        @AuraEnabled public String configEnabled {get; set;}
        @AuraEnabled public List<String> configEnabledPicklist {get; set;}
        @AuraEnabled public String configRepeats {get; set;}
        @AuraEnabled public String configHours {get; set;}
        @AuraEnabled public String configMinutes {get; set;}
    }

    @AuraEnabled
    public static List<Configurators> getMetaData(){
        List<Configurators> configFinalList = new List<Configurators>();
        List<Configurators> configMdtList = new List<Configurators>();
        List<Configurators> configObjList = new List<Configurators>();
        List<String> enabledPickLst = new List<String>();
        List<String> labelList = new List<String>();

        Schema.DescribeFieldResult result = ComplianceConfigurator__mdt.Enabled__c.getDescribe();
        List<Schema.PicklistEntry> picklistValues = result.getPicklistValues();
        for(Schema.PicklistEntry pick: picklistValues){
            enabledPickLst.add(pick.getValue());
        }
        
        List<ComplianceConfigurator__mdt> mdtList = [SELECT Id, MasterLabel, DeveloperName, Enabled__c, IsUserAccessible__c, Type__c, License__c FROM ComplianceConfigurator__mdt WHERE Type__c = 'ConfigurationScreen' AND Enabled__c = 'Yes'];
        for(ComplianceConfigurator__mdt mdt: mdtList){
            Configurators con = new Configurators();
            con.configName = mdt.MasterLabel;
            con.configEnabled = mdt.Enabled__c;
            con.configEnabledPicklist = new List<String>();
            con.configEnabledPicklist.addAll(enabledPickLst);
            configMdtList.add(con);
            labelList.add(mdt.MasterLabel); 
        }

        List<ComplianceUserConfig__c> cucLst = [SELECT Id, Name, Enabled__c, Repeats__c, Hours__c, Minutes__c, ScheduleTime__c FROM ComplianceUserConfig__c WHERE Name IN :labelList];
        if(cucLst.size() > 0){
            for(ComplianceUserConfig__c c: cucLst){
                Configurators con = new Configurators();
                con.configName = c.Name;
                con.configEnabled = c.Enabled__c;
                con.configEnabledPicklist = new List<String>();
                con.configEnabledPicklist.addAll(enabledPickLst);
                con.configRepeats = c.Repeats__c;
                con.configHours = c.Hours__c;
                con.configMinutes = c.Minutes__c;
                configObjList.add(con);
            }
        }
        
        for(Configurators cfgMdt: configMdtList){
            Boolean flag = true;
            for(Configurators cfgObj : configObjList){
                if(cfgObj.configName == cfgMdt.configName){
                   flag = false; 
                    configFinalList.add(cfgObj);
                }
            }
            if(flag){
                configFinalList.add(cfgMdt);
            }
        }
        return configFinalList;
    }

    @AuraEnabled
    public static List<ComplianceConfigurator__mdt> buttonState(){
        List<ComplianceConfigurator__mdt> mdtList = [SELECT Id, MasterLabel, DeveloperName, Enabled__c, IsUserAccessible__c, Type__c, License__c FROM ComplianceConfigurator__mdt WHERE Type__c = 'ConfigurationScreenButtons'];
        return mdtList;     
    }

    @AuraEnabled
    public static void saveObjects(String obj){
        Configurators configRecord = (Configurators)System.JSON.deserialize(obj, Configurators.class); 
        List<ComplianceUserConfig__c> cucLst = new List<ComplianceUserConfig__c>();
        List<ComplianceUserConfig__c> cUserConfig = [SELECT Id, Name, Enabled__c, Repeats__c, Hours__c, Minutes__c, ScheduleTime__c FROM ComplianceUserConfig__c WHERE Name=:configRecord.configName Limit 1];
        if(cUserConfig.size() > 0){
            if(Schema.sObjectType.ComplianceUserConfig__c.fields.Enabled__c.isUpdateable()){
                cUserConfig[0].Enabled__c = configRecord.configEnabled;
                if(configRecord.configEnabled == 'No'){
                    cUserConfig[0].Repeats__c = '';
                    cUserConfig[0].Hours__c = '';
                    cUserConfig[0].Minutes__c = '';
                    
                    List<ComplianceSchedulerConfig__c> schedulerList = [SELECT Id, Repeats__c, Hours__c, Minutes__c, JobId__c, IsActive__c, ComplianceUserConfig__c FROM ComplianceSchedulerConfig__c WHERE ComplianceUserConfig__c=:cUserConfig[0].Id AND IsActive__c=true Limit 1];
                    if(schedulerList.size() > 0){
                        List<CronTrigger> ct = [SELECT Id FROM CronTrigger WHERE Id=:schedulerList[0].JobId__c];
                        if(ct.size() > 0){
                            System.abortJob(schedulerList[0].JobId__c);
                        }
                        if(Schema.sObjectType.ComplianceSchedulerConfig__c.fields.IsActive__c.isUpdateable()){
                            schedulerList[0].IsActive__c = false;
                        }
                        if(ComplianceSchedulerConfig__c.SObjectType.getDescribe().isUpdateable()){
                            update schedulerList;
                        }
                    }
                }
            }
            if(ComplianceUserConfig__c.SObjectType.getDescribe().isUpdateable()){
                update cUserConfig;
            }
        } else {
            ComplianceUserConfig__c compUsr = new ComplianceUserConfig__c();
            if(Schema.sObjectType.ComplianceUserConfig__c.fields.Name.isCreateable() && Schema.sObjectType.ComplianceUserConfig__c.fields.Enabled__c.isCreateable()){
            compUsr.Name = configRecord.configName;
            compUsr.Enabled__c = configRecord.configEnabled;
            cucLst.add(compUsr);
            }
            if(ComplianceUserConfig__c.SObjectType.getDescribe().isCreateable()){
            insert cucLst;
            }
        }
    }

    @AuraEnabled
    public static void saveSchedule(String obj, String repeats, String hours, String minutes){
        ComplianceConfigurator__mdt mdtqry = [SELECT Id, DeveloperName, Enabled__c, Text1__c, Type__c FROM ComplianceConfigurator__mdt WHERE Type__c = 'Repeats' AND DeveloperName = 'RepeatsQuery'];
        List<ErrorLogs__c> errorList = new List<ErrorLogs__c>();
        try{
            Configurators configRecord = (Configurators)System.JSON.deserialize(obj, Configurators.class);
            String day_Week;
            String cronTrig;
            String jobId;
            String strvalues = mdtqry.Text1__c;
            if(strvalues!=null){
                List<String> parts = strvalues.split(',');
                if (parts != null && parts.size() >0) {
                    if(repeats != parts[0]){
                        if(repeats == parts[1]){
                            day_Week = '*'; 
                        }
                        else if(repeats == parts[2]){
                            day_Week = '2-6';
                        }
                        else if(repeats == parts[3]){
                            day_Week = '2';
                        }
                        else if(repeats == parts[4]){
                           day_Week = '3';
                        }
                        else if(repeats == parts[5]){
                            day_Week = '4';
                        }
                        else if(repeats == parts[6]){
                            day_Week = '5';
                        }
                        else if(repeats == parts[7]){
                                    day_Week = '6';
                        }
                        else if(repeats == parts[8]){
                            day_Week = '7';
                        }
                        else if(repeats == parts[9]){
                            day_Week = '1';
                        }
                    }
                    if(day_Week != null || day_Week != ''){
                        cronTrig = '0'+' '+minutes+' '+hours+' '+'?'+' '+'*'+' '+day_Week;
                    }
                    List<ComplianceUserConfig__c> cUserConfig = [SELECT Id, Name, Enabled__c, Repeats__c, Hours__c, Minutes__c, ScheduleTime__c FROM ComplianceUserConfig__c WHERE Name=:configRecord.configName Limit 1];
                    if(cUserConfig.size() > 0){
                        if(repeats != parts[0]){
                            if(Schema.sObjectType.ComplianceUserConfig__c.fields.Repeats__c.isUpdateable() && Schema.sObjectType.ComplianceUserConfig__c.fields.Hours__c.isUpdateable() && Schema.sObjectType.ComplianceUserConfig__c.fields.Minutes__c.isUpdateable()){
                                cUserConfig[0].Repeats__c = repeats;
                                cUserConfig[0].Hours__c = hours;
                                cUserConfig[0].Minutes__c = minutes;
                            }
                            if(ComplianceUserConfig__c.SObjectType.getDescribe().isUpdateable()){
                                Database.SaveResult[] saveResults = Database.update(cUserConfig,false);
                                for(Database.SaveResult sr:saveResults){
                                    errorList.addAll(ErrorLogUtility.createErrorLogObject(sr,'Configuration Screen'));
                                }
                            }
                        }
                        List<ComplianceSchedulerConfig__c> schList = new List<ComplianceSchedulerConfig__c>();
                        List<ComplianceSchedulerConfig__c> schedulerList = [SELECT Id, Repeats__c, Hours__c, Minutes__c, JobId__c, IsActive__c, ComplianceUserConfig__c FROM ComplianceSchedulerConfig__c WHERE ComplianceUserConfig__c=:cUserConfig[0].Id AND IsActive__c=true Limit 1];
                        if(schedulerList.size() > 0){
                            System.abortJob(schedulerList[0].JobId__c);
                            jobId = scheduleRefactor(obj, cronTrig);
                            if(Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Repeats__c.isUpdateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Hours__c.isUpdateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Minutes__c.isUpdateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.JobId__c.isUpdateable()){
                                schedulerList[0].Repeats__c = repeats;
                                schedulerList[0].Hours__c = hours;
                                schedulerList[0].Minutes__c = minutes;
                                schedulerList[0].JobId__c = jobId;
                            }
                            if(ComplianceSchedulerConfig__c.SObjectType.getDescribe().isUpdateable()){
                                Database.SaveResult[] saveResults = Database.update(schedulerList,false);
                                for(Database.SaveResult sr:saveResults){
                                    errorList.addAll(ErrorLogUtility.createErrorLogObject(sr,'Configuration Screen'));
                                }
                            }
                        } else{
                            jobId = scheduleRefactor(obj, cronTrig);
                            ComplianceSchedulerConfig__c csc = new ComplianceSchedulerConfig__c();
                            if(Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Repeats__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Hours__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Minutes__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.IsActive__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.ComplianceUserConfig__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.JobId__c.isCreateable()){
                                csc.Repeats__c = repeats;
                                csc.Hours__c = hours;
                                csc.Minutes__c = minutes;
                                csc.IsActive__c = true;
                                csc.JobId__c = jobId;
                                csc.ComplianceUserConfig__c = cUserConfig[0].Id;
                                schList.add(csc);
                            }
                            if(ComplianceSchedulerConfig__c.SObjectType.getDescribe().isCreateable()){
                                Database.SaveResult[] saveResults = Database.insert(schList,false);
                                for(Database.SaveResult sr:saveResults){
                                    errorList.addAll(ErrorLogUtility.createErrorLogObject(sr,'Configuration Screen'));
                                }
                            }
                        }
                    }  
                    else {  
                        List<ComplianceSchedulerConfig__c> schList = new List<ComplianceSchedulerConfig__c>();
                        List<ComplianceUserConfig__c> cucLst = new List<ComplianceUserConfig__c>();
                        ComplianceUserConfig__c compUsr = new ComplianceUserConfig__c();
                        if(repeats != parts[0]){
                            if(Schema.sObjectType.ComplianceUserConfig__c.fields.Name.isCreateable() && Schema.sObjectType.ComplianceUserConfig__c.fields.Enabled__c.isCreateable()){
                                compUsr.Name = configRecord.configName;
                                compUsr.Enabled__c = configRecord.configEnabled;
                                compUsr.Repeats__c = repeats;
                                compUsr.Hours__c = hours;
                                compUsr.Minutes__c = minutes;
                                cucLst.add(compUsr);
                            }
                            if(ComplianceUserConfig__c.SObjectType.getDescribe().isCreateable()){
                                Database.SaveResult[] saveResults = Database.insert(cucLst,false);
                                for(Database.SaveResult sr:saveResults){
                                    errorList.addAll(ErrorLogUtility.createErrorLogObject(sr,'Configuration Screen'));
                                }
                            }
                        }
                        jobId = scheduleRefactor(obj, cronTrig);
                        ComplianceSchedulerConfig__c csc = new ComplianceSchedulerConfig__c();
                        if(Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Repeats__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Hours__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.Minutes__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.IsActive__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.ComplianceUserConfig__c.isCreateable() && Schema.sObjectType.ComplianceSchedulerConfig__c.fields.JobId__c.isCreateable()){
                            csc.Repeats__c = repeats;
                            csc.Hours__c = hours;
                            csc.Minutes__c = minutes;
                            csc.IsActive__c = true;
                            csc.JobId__c = jobId;
                            csc.ComplianceUserConfig__c = compUsr.Id;
                            schList.add(csc);
                        }
                        if(ComplianceSchedulerConfig__c.SObjectType.getDescribe().isCreateable()){
                            Database.SaveResult[] saveResults = Database.insert(schList,false);
                            for(Database.SaveResult sr:saveResults){
                                errorList.addAll(ErrorLogUtility.createErrorLogObject(sr,'Configuration Screen'));
                            }
                        }
                    } 
                }
            }   
        }
        catch(Exception ex){
            errorList.add(ErrorLogUtility.createErrorLogObject(ex,'Configuration Screen'));
        }
        ErrorLogUtility.insertErrorLogObject(errorList);
    }
    public static String scheduleRefactor(String obj, String cronTrig){
        String jobId;
        Configurators configRecord = (Configurators)System.JSON.deserialize(obj, Configurators.class);
        if(configRecord.configName == 'Setup Audit Trail'){
            if(cronTrig != null || cronTrig != ''){
                SetupAuditSchedulable setupSch = new SetupAuditSchedulable();
                jobId = system.schedule('Setup Audit Job', cronTrig, setupSch);
            }
        }
        else if(configRecord.configName == 'User and Profile Management'){
                if(cronTrig != null || cronTrig != ''){
                    UserSchedulable userSch = new UserSchedulable();
                    jobId = system.schedule('User Job', cronTrig, userSch);
                }
        }
        else if(configRecord.configName == 'Security Health Check'){
                if(cronTrig != null || cronTrig != ''){
                    HealthCheckSchedulable healthSch = new HealthCheckSchedulable();
                    jobId = system.schedule('Health Job', cronTrig, healthSch);
                }       
        }
        else if(configRecord.configName == 'Organization Encryption'){
                if(cronTrig != null || cronTrig != ''){
                    OrganizationEncryptionSchedulable orgSch = new OrganizationEncryptionSchedulable();
                    jobId = system.schedule('Orgainization Job', cronTrig, orgSch);
                }       
        }
        else if(configRecord.configName == 'Field Information'){
                if(cronTrig != null || cronTrig != ''){
                    CustomFieldSchedulable cstFldSch = new CustomFieldSchedulable();
                    jobId = system.schedule('cstFld Job', cronTrig, cstFldSch);
                }       
        }
            
        else if(configRecord.configName == 'Login IP Ranges'){
                if(cronTrig != null || cronTrig != ''){
                    LoginIPRangeSchedulable loginIpSchle = new LoginIPRangeSchedulable();
                    jobId = system.schedule('LoginIp Job', cronTrig, loginIpSchle);
                }       
        }
        else if(configRecord.configName == 'Group and Group Members'){
                if(cronTrig != null || cronTrig != ''){
                    GroupSchedulable groupScdle = new GroupSchedulable();
                    jobId = system.schedule('GroupScdule Job', cronTrig, groupScdle);
                }       
        }
        else if(configRecord.configName == 'Login History'){
                if(cronTrig != null || cronTrig != ''){
                    LoginHistorySchedulable loginHistrySchle = new LoginHistorySchedulable();
                    jobId = system.schedule('LoginHistory Job', cronTrig, loginHistrySchle);
                }       
        }
        else if(configRecord.configName == 'Installed Apps'){
                if(cronTrig != null || cronTrig != ''){
                    InstalledPackageServiceSchedulable installAppScdle = new InstalledPackageServiceSchedulable();
                    jobId = system.schedule('InstallAppSchle Job', cronTrig, installAppScdle);
                }       
        }
        else if(configRecord.configName == 'Connected Apps'){
                if(cronTrig != null || cronTrig != ''){
                    ConnectedAppSchedulable connectedAppScdle = new ConnectedAppSchedulable();
                    jobId = system.schedule('ConnectedAppScdle Job', cronTrig, connectedAppScdle);
                }       
        }
        else if(configRecord.configName == 'Permission Sets'){
                if(cronTrig != null || cronTrig != ''){
                    PermissionSetSchedulable permissionSetScdle = new PermissionSetSchedulable();
                    jobId = system.schedule('PermisiionSet Job', cronTrig, permissionSetScdle);
                }       
        }
        else if(configRecord.configName == 'Object Permissions'){
                if(cronTrig != null || cronTrig != ''){
                    ObjectPermissionsSchedulable objectPermissionScdle = new ObjectPermissionsSchedulable();
                    jobId = system.schedule('ObjectPermisison Job', cronTrig, objectPermissionScdle);
                }       
        }
        return jobId;
    }
    @AuraEnabled
    public static void deleteSchedule(String obj){
        Configurators configRecord = (Configurators)System.JSON.deserialize(obj, Configurators.class);
        List<ComplianceUserConfig__c> cUserConfig = [SELECT Id, Name, Enabled__c, Repeats__c, Hours__c, Minutes__c, ScheduleTime__c FROM ComplianceUserConfig__c WHERE Name=:configRecord.configName Limit 1];
        if(cUserConfig.size() > 0){
            if(Schema.sObjectType.ComplianceUserConfig__c.fields.Repeats__c.isUpdateable() && Schema.sObjectType.ComplianceUserConfig__c.fields.Hours__c.isUpdateable() && Schema.sObjectType.ComplianceUserConfig__c.fields.Minutes__c.isUpdateable()){
                cUserConfig[0].Repeats__c = '';
                cUserConfig[0].Hours__c   = '';
                cUserConfig[0].Minutes__c = '';
            }
            if(ComplianceUserConfig__c.SObjectType.getDescribe().isUpdateable()){
                update cUserConfig;
            }
            List<ComplianceSchedulerConfig__c> schedulerList = [SELECT Id, Repeats__c, Hours__c, Minutes__c, JobId__c, IsActive__c, ComplianceUserConfig__c FROM ComplianceSchedulerConfig__c WHERE ComplianceUserConfig__c=:cUserConfig[0].Id AND IsActive__c=true Limit 1];
            if(schedulerList.size() > 0){
                List<CronTrigger> ct = [SELECT Id FROM CronTrigger WHERE Id=:schedulerList[0].JobId__c];
                if(ct.size() > 0){
                    System.abortJob(schedulerList[0].JobId__c);
                }
                if(Schema.sObjectType.ComplianceSchedulerConfig__c.fields.IsActive__c.isUpdateable()){
                    schedulerList[0].IsActive__c = false;
                }
                if(ComplianceSchedulerConfig__c.SObjectType.getDescribe().isUpdateable()){
                    //TODO:  Error Handling
                    update schedulerList;
                }
            }
        }
    }
    
    @AuraEnabled
    public static void runQueueables(String obj){
        Configurators configRecord = (Configurators)System.JSON.deserialize(obj, Configurators.class);
        if(configRecord.configName == 'Organization Encryption'){
            OrganizationEncryptionQueueable orgQueue = new OrganizationEncryptionQueueable();
            Id jobId = System.enqueueJob(orgQueue);
        }
        else if(configRecord.configName == 'Security Health Check'){
            HealthCheckQueuable hCheckQueue = new HealthCheckQueuable();
            Id jobId = System.enqueueJob(hCheckQueue);
        }
        
        else if(configRecord.configName == 'Object Permissions'){
            ObjectPermissionsServiceQueueable objectPermissionQble=new ObjectPermissionsServiceQueueable();
            Id jobId = System.enqueueJob(objectPermissionQble);
        }
        
        else if(configRecord.configName == 'Connected Apps'){
            ConnectedAppQueueable connectedQuble=new ConnectedAppQueueable();
            Id jobId = System.enqueueJob(connectedQuble);
        }
        else if(configRecord.configName == 'Installed Apps'){
            InstalledPackageServiceQueueable installPckgQble=new InstalledPackageServiceQueueable();
            Id jobId = System.enqueueJob(installPckgQble);
        }
       
    }
}