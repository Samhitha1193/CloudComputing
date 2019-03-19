/**
*  @Author CloudRamp LLC  
*  Copyright to CloudRamp LLC 
*  All rights Reserved
*  Data Access class for Organization
 */
public with sharing class OrganizationDAO {
     
    

     /**
     Get Active Organiztions
     @returns List<Organization__c>
      */
    public List<Organization__c> queryActiveOrgs() {
        return [SELECT IsActive__c, Id,Name,NamedCredential__c FROM Organization__c WHERE IsActive__c = true];
    }

    public List<Organization__c> queryEncryptedOrgs() {
        return [SELECT IsActive__c, Id, Name, NamedCredential__c FROM Organization__c WHERE Platform_Encryption_enabled__c = true AND IsActive__c = true];
    }
}