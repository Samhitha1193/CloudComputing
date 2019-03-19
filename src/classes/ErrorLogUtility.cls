public with sharing class ErrorLogUtility {
    public static ErrorLogs__c createErrorLogObject(Exception ex,String objectVal) {
        ErrorLogs__c errors = new ErrorLogs__c();
        if(Schema.sObjectType.ErrorLogs__c.fields.ErrorDetails__c.isCreateable() && 
            Schema.sObjectType.ErrorLogs__c.fields.ErrorDetails__c.isAccessible() &&
            Schema.sObjectType.ErrorLogs__c.fields.ErrorObject__c.isCreateable() &&  
            Schema.sObjectType.ErrorLogs__c.fields.ErrorObject__c.isAccessible()){
            errors.ErrorDetails__c = ex.getMessage() + ' - ' + ex.getLineNumber()
                    + ' - ' + ex.getCause() + ' - ' + ex.getStackTraceString();
            errors.ErrorObject__c = objectVal;
            
        }
        return errors;
    }

    public static List<ErrorLogs__c> createErrorLogObject(Database.Error[] ex,String objectVal) {
        List<ErrorLogs__c> errors = new List<ErrorLogs__c>();
        for (Database.Error err : ex){
            errors.add(createErrorLogObject(err,objectVal));
        }
        
        return errors;
    }


    public static ErrorLogs__c createErrorLogObject(Database.Error ex,String objectVal) {
        ErrorLogs__c errors = new ErrorLogs__c();
        if(Schema.sObjectType.ErrorLogs__c.fields.ErrorDetails__c.isCreateable() && 
            Schema.sObjectType.ErrorLogs__c.fields.ErrorDetails__c.isAccessible() &&
            Schema.sObjectType.ErrorLogs__c.fields.ErrorObject__c.isCreateable() &&  
            Schema.sObjectType.ErrorLogs__c.fields.ErrorObject__c.isAccessible()){
            errors.ErrorDetails__c = ex.getStatusCode() + '-' + ex.getMessage() + ' - ' + ex.getFields();
                    
            errors.ErrorObject__c = objectVal;
            
        }
        return errors;
    }

    public static List<ErrorLogs__c> createErrorLogObject(Database.UpsertResult ur,String objectVal) {
        List<ErrorLogs__c> errors = new List<ErrorLogs__c>();
        if (!ur.isSuccess()) {
            errors = createErrorLogObject(ur.getErrors(),objectVal);
        }
        return errors;
    }

    public static List<ErrorLogs__c> createErrorLogObject(Database.SaveResult ir,String objectVal) {
        List<ErrorLogs__c> errors = new List<ErrorLogs__c>();
        if (!ir.isSuccess()) {
            errors = createErrorLogObject(ir.getErrors(),objectVal);
        }
        return errors;
    }


    public static List<ErrorLogs__c> insertErrorLogObject(List<ErrorLogs__c> errorList) {
        if(errorList.size() > 0 && ErrorLogs__c.SObjectType.getDescribe().isCreateable()){
            insert errorList;
        }

        return errorList;
    }
}