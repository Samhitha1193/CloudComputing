public with sharing class MetadataService {
    public class ConnectedApp extends Metadata {
        public String type = 'ConnectedApp';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public MetadataService.ConnectedAppAttribute[] attributes;
        public MetadataService.ConnectedAppCanvasConfig canvasConfig;
        public String contactEmail;
        public String contactPhone;
        public String description;
        public String iconUrl;
        public String infoUrl;
        public MetadataService.ConnectedAppIpRange[] ipRanges;
        public String label;
        public String logoUrl;
        public MetadataService.ConnectedAppMobileDetailConfig mobileAppConfig;
        public String mobileStartUrl;
        public MetadataService.ConnectedAppOauthConfig oauthConfig;
        public String plugin;
        public MetadataService.ConnectedAppSamlConfig samlConfig;
        public String startUrl;
        private String[] attributes_type_info = new String[]{'attributes','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] canvasConfig_type_info = new String[]{'canvasConfig','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] contactEmail_type_info = new String[]{'contactEmail','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] contactPhone_type_info = new String[]{'contactPhone','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] iconUrl_type_info = new String[]{'iconUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] infoUrl_type_info = new String[]{'infoUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] ipRanges_type_info = new String[]{'ipRanges','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] logoUrl_type_info = new String[]{'logoUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] mobileAppConfig_type_info = new String[]{'mobileAppConfig','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] mobileStartUrl_type_info = new String[]{'mobileStartUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] oauthConfig_type_info = new String[]{'oauthConfig','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] plugin_type_info = new String[]{'plugin','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] samlConfig_type_info = new String[]{'samlConfig','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};            private String[] startUrl_type_info = new String[]{'startUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'attributes','canvasConfig','contactEmail','contactPhone','description','iconUrl','infoUrl','ipRanges','label','logoUrl','mobileAppConfig','mobileStartUrl','oauthConfig','plugin','samlConfig','startUrl'};
    }
    public class ReadConnectedAppResult implements IReadResult {
        public MetadataService.ConnectedApp[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readConnectedAppResponse_element implements IReadResponseElement {
        public MetadataService.ReadConnectedAppResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class ConnectedAppAttribute {
        public String formula;
        public String key;
        private String[] formula_type_info = new String[]{'formula','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] key_type_info = new String[]{'key','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'formula','key'};
    }
    public class ConnectedAppCanvasConfig {
        public String accessMethod;
        public String canvasUrl;
        public String lifecycleClass;
        public String[] locations;
        public String[] options;
        public String samlInitiationMethod;
        private String[] accessMethod_type_info = new String[]{'accessMethod','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] canvasUrl_type_info = new String[]{'canvasUrl','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lifecycleClass_type_info = new String[]{'lifecycleClass','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] locations_type_info = new String[]{'locations','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] options_type_info = new String[]{'options','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] samlInitiationMethod_type_info = new String[]{'samlInitiationMethod','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'accessMethod','canvasUrl','lifecycleClass','locations','options','samlInitiationMethod'};
    }
    public class ConnectedAppIpRange {
        public String description;
        public String end_x;
        public String start;
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] end_x_type_info = new String[]{'end','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] start_type_info = new String[]{'start','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'description','end_x','start'};
    }
    public class ConnectedAppMobileDetailConfig {
        public String applicationBinaryFile;
        public String applicationBinaryFileName;
        public String applicationBundleIdentifier;
        public Integer applicationFileLength;
        public String applicationIconFile;
        public String applicationIconFileName;
        public String applicationInstallUrl;
        public String devicePlatform;
        public String deviceType;
        public String minimumOsVersion;
        public Boolean privateApp;
        public String version;
        private String[] applicationBinaryFile_type_info = new String[]{'applicationBinaryFile','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] applicationBinaryFileName_type_info = new String[]{'applicationBinaryFileName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] applicationBundleIdentifier_type_info = new String[]{'applicationBundleIdentifier','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] applicationFileLength_type_info = new String[]{'applicationFileLength','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] applicationIconFile_type_info = new String[]{'applicationIconFile','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] applicationIconFileName_type_info = new String[]{'applicationIconFileName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] applicationInstallUrl_type_info = new String[]{'applicationInstallUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] devicePlatform_type_info = new String[]{'devicePlatform','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] deviceType_type_info = new String[]{'deviceType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] minimumOsVersion_type_info = new String[]{'minimumOsVersion','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] privateApp_type_info = new String[]{'privateApp','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] version_type_info = new String[]{'version','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'applicationBinaryFile','applicationBinaryFileName','applicationBundleIdentifier','applicationFileLength','applicationIconFile','applicationIconFileName','applicationInstallUrl','devicePlatform','deviceType','minimumOsVersion','privateApp','version'};
    }
    public class ConnectedAppOauthConfig {
        public String callbackUrl;
        public String certificate;
        public String consumerKey;
        public String consumerSecret;
        public String[] scopes;
        private String[] callbackUrl_type_info = new String[]{'callbackUrl','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] certificate_type_info = new String[]{'certificate','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] consumerKey_type_info = new String[]{'consumerKey','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] consumerSecret_type_info = new String[]{'consumerSecret','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] scopes_type_info = new String[]{'scopes','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'callbackUrl','certificate','consumerKey','consumerSecret','scopes'};
    }
    public class ConnectedAppSamlConfig {
        public String acsUrl;
        public String certificate;
        public String encryptionCertificate;
        public String encryptionType;
        public String entityUrl;
        public String issuer;
        public String samlNameIdFormat;
        public String samlSubjectCustomAttr;
        public String samlSubjectType;
        private String[] acsUrl_type_info = new String[]{'acsUrl','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] certificate_type_info = new String[]{'certificate','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] encryptionCertificate_type_info = new String[]{'encryptionCertificate','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] encryptionType_type_info = new String[]{'encryptionType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] entityUrl_type_info = new String[]{'entityUrl','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] issuer_type_info = new String[]{'issuer','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] samlNameIdFormat_type_info = new String[]{'samlNameIdFormat','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] samlSubjectCustomAttr_type_info = new String[]{'samlSubjectCustomAttr','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] samlSubjectType_type_info = new String[]{'samlSubjectType','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'acsUrl','certificate','encryptionCertificate','encryptionType','entityUrl','issuer','samlNameIdFormat','samlSubjectCustomAttr','samlSubjectType'};
    }
    public class DelegateGroup extends Metadata {
        public String type = 'DelegateGroup';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String[] customObjects;
        public String[] groups;
        public String label;
        public Boolean loginAccess;
        public String[] permissionSets;
        public String[] profiles;
        public String[] roles;
        private String[] customObjects_type_info = new String[]{'customObjects','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] groups_type_info = new String[]{'groups','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] loginAccess_type_info = new String[]{'loginAccess','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] permissionSets_type_info = new String[]{'permissionSets','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] profiles_type_info = new String[]{'profiles','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] roles_type_info = new String[]{'roles','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'customObjects','groups','label','loginAccess','permissionSets','profiles','roles'};
    }
    public class ReadDelegateGroupResult implements IReadResult {
        public MetadataService.DelegateGroup[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readDelegateGroupResponse_element implements IReadResponseElement {
        public MetadataService.ReadDelegateGroupResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class InstalledPackage extends Metadata {
        public String type = 'InstalledPackage';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String password;
        public String versionNumber;
        private String[] password_type_info = new String[]{'password','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] versionNumber_type_info = new String[]{'versionNumber','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'password','versionNumber'};
    }
    public class ReadInstalledPackageResult implements IReadResult {
        public MetadataService.InstalledPackage[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readInstalledPackageResponse_element implements IReadResponseElement {
        public MetadataService.ReadInstalledPackageResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class ProfileSessionSetting extends Metadata{
    	public String fullName;
    	private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public Boolean forceLogout;
        public String profile;
        public String requiredSessionLevel;
        public Integer sessionTimeout;
        public Boolean sessionTimeoutWarning;
        private String[] forceLogout_type_info = new String[]{'forceLogout','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] profile_type_info = new String[]{'profile','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] requiredSessionLevel_type_info = new String[]{'requiredSessionLevel','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] sessionTimeout_type_info = new String[]{'sessionTimeout','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] sessionTimeoutWarning_type_info = new String[]{'sessionTimeoutWarning','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'forceLogout','profile','requiredSessionLevel','sessionTimeout','sessionTimeoutWarning'};
    }
    public class ReadProfileSessionSettingResult implements IReadResult {
        public MetadataService.ProfileSessionSetting[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readProfileSessionSettingResponse_element implements IReadResponseElement {
        public MetadataService.ReadProfileSessionSettingResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class SamlSsoConfig extends Metadata {
        public String type = 'SamlSsoConfig';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String attributeName;
        public String attributeNameIdFormat;
        public String decryptionCertificate;
        public String errorUrl;
        public String executionUserId;
        public String identityLocation;
        public String identityMapping;
        public String issuer;
        public String loginUrl;
        public String logoutUrl;
        public String name;
        public String oauthTokenEndpoint;
        public Boolean redirectBinding;
        public String requestSignatureMethod;
        public String requestSigningCertId;
        public String salesforceLoginUrl;
        public String samlEntityId;
        public String samlJitHandlerId;
        public String samlVersion;
        public Boolean userProvisioning;
        public String validationCert;
        private String[] attributeName_type_info = new String[]{'attributeName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] attributeNameIdFormat_type_info = new String[]{'attributeNameIdFormat','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] decryptionCertificate_type_info = new String[]{'decryptionCertificate','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] errorUrl_type_info = new String[]{'errorUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] executionUserId_type_info = new String[]{'executionUserId','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] identityLocation_type_info = new String[]{'identityLocation','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] identityMapping_type_info = new String[]{'identityMapping','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] issuer_type_info = new String[]{'issuer','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] loginUrl_type_info = new String[]{'loginUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] logoutUrl_type_info = new String[]{'logoutUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] name_type_info = new String[]{'name','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] oauthTokenEndpoint_type_info = new String[]{'oauthTokenEndpoint','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] redirectBinding_type_info = new String[]{'redirectBinding','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] requestSignatureMethod_type_info = new String[]{'requestSignatureMethod','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] requestSigningCertId_type_info = new String[]{'requestSigningCertId','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] salesforceLoginUrl_type_info = new String[]{'salesforceLoginUrl','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] samlEntityId_type_info = new String[]{'samlEntityId','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] samlJitHandlerId_type_info = new String[]{'samlJitHandlerId','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] samlVersion_type_info = new String[]{'samlVersion','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] userProvisioning_type_info = new String[]{'userProvisioning','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] validationCert_type_info = new String[]{'validationCert','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'attributeName','attributeNameIdFormat','decryptionCertificate','errorUrl','executionUserId','identityLocation','identityMapping','issuer','loginUrl','logoutUrl','name','oauthTokenEndpoint','redirectBinding','requestSignatureMethod','salesforceLoginUrl','samlEntityId','samlJitHandlerId','samlVersion','userProvisioning','validationCert'};
    }
    public class ReadSamlSsoConfigResult implements IReadResult {
        public MetadataService.SamlSsoConfig[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readSamlSsoConfigResponse_element implements IReadResponseElement {
        public MetadataService.ReadSamlSsoConfigResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public virtual class Metadata {
        public String fullName;
    }
    public interface IReadResult {
        MetadataService.Metadata[] getRecords();
    }
    public interface IReadResponseElement {
        IReadResult getResult();
    }
    public class FileProperties {
        public String createdById;
        public String createdByName;
        public DateTime createdDate;
        public String fileName;
        public String fullName;
        public String id;
        public String lastModifiedById;
        public String lastModifiedByName;
        public DateTime lastModifiedDate;
        public String manageableState;
        public String namespacePrefix;
        public String type_x;
        private String[] createdById_type_info = new String[]{'createdById','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] createdByName_type_info = new String[]{'createdByName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] createdDate_type_info = new String[]{'createdDate','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fileName_type_info = new String[]{'fileName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] id_type_info = new String[]{'id','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lastModifiedById_type_info = new String[]{'lastModifiedById','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lastModifiedByName_type_info = new String[]{'lastModifiedByName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] lastModifiedDate_type_info = new String[]{'lastModifiedDate','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] manageableState_type_info = new String[]{'manageableState','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] namespacePrefix_type_info = new String[]{'namespacePrefix','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'createdById','createdByName','createdDate','fileName','fullName','id','lastModifiedById','lastModifiedByName','lastModifiedDate','manageableState','namespacePrefix','type_x'};
    }
    public class LogInfo {
        public String category;
        public String level;
        private String[] category_type_info = new String[]{'category','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] level_type_info = new String[]{'level','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'category','level'};
    }
    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }
    public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }
    public class DebuggingHeader_element {
        public MetadataService.LogInfo[] categories;
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    public class AllOrNoneHeader_element {
        public Boolean allOrNone;
        private String[] allOrNone_type_info = new String[]{'allOrNone','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'allOrNone'};
    }
    public class MetadataPort {
        public String endpoint_x = URL.getSalesforceBaseUrl().toExternalForm() + '/services/Soap/m/39.0';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public MetadataService.SessionHeader_element SessionHeader;
        public MetadataService.DebuggingInfo_element DebuggingInfo;
        public MetadataService.DebuggingHeader_element DebuggingHeader;
        public MetadataService.CallOptions_element CallOptions;
        public MetadataService.AllOrNoneHeader_element AllOrNoneHeader;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/2006/04/metadata';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/2006/04/metadata';
        private String AllOrNoneHeader_hns = 'AllOrNoneHeader=http://soap.sforce.com/2006/04/metadata';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata', 'MetadataService'};
        
        public MetadataService.IReadResult readMetadata(String type_x,String[] fullNames) {
            MetadataService.readMetadata_element request_x = new MetadataService.readMetadata_element();
            request_x.type_x = type_x;
            request_x.fullNames = fullNames;
            MetadataService.IReadResponseElement response_x;
            Map<String, MetadataService.IReadResponseElement> response_map_x = new Map<String, MetadataService.IReadResponseElement>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'readMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'readMetadataResponse',
              'MetadataService.read' + type_x + 'Response_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.getResult();
        }
        
        public MetadataService.FileProperties[] listMetadata(MetadataService.ListMetadataQuery[] queries,Double asOfVersion) {
            MetadataService.listMetadata_element request_x = new MetadataService.listMetadata_element();
            request_x.queries = queries;
            request_x.asOfVersion = asOfVersion;
            MetadataService.listMetadataResponse_element response_x;
            Map<String, MetadataService.listMetadataResponse_element> response_map_x = new Map<String, MetadataService.listMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/2006/04/metadata',
              'listMetadata',
              'http://soap.sforce.com/2006/04/metadata',
              'listMetadataResponse',
              'MetadataService.listMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
    public class listMetadata_element {
        public MetadataService.ListMetadataQuery[] queries;
        public Double asOfVersion;
        private String[] queries_type_info = new String[]{'queries','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] asOfVersion_type_info = new String[]{'asOfVersion','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'queries','asOfVersion'};
    }
    public class listMetadataResponse_element {
        public MetadataService.FileProperties[] result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class ListMetadataQuery {
        public String folder;
        public String type_x;
        private String[] folder_type_info = new String[]{'folder','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'folder','type_x'};
    }
    public class readMetadata_element {
        public String type_x;
        public String[] fullNames;
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] fullNames_type_info = new String[]{'fullNames','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'type_x','fullNames'};
    }
    public class CustomObject extends Metadata {
        public String type = 'CustomObject';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public MetadataService.ActionOverride[] actionOverrides;
        public Boolean allowInChatterGroups;
        public MetadataService.ArticleTypeChannelDisplay articleTypeChannelDisplay;
        public MetadataService.BusinessProcess[] businessProcesses;
        public String compactLayoutAssignment;
        public MetadataService.CompactLayout[] compactLayouts;
        public String customHelp;
        public String customHelpPage;
        public String customSettingsType;
        public String deploymentStatus;
        public Boolean deprecated;
        public String description;
        public Boolean enableActivities;
        public Boolean enableBulkApi;
        public Boolean enableChangeDataCapture;
        public Boolean enableDivisions;
        public Boolean enableEnhancedLookup;
        public Boolean enableFeeds;
        public Boolean enableHistory;
        public Boolean enableReports;
        public Boolean enableSearch;
        public Boolean enableSharing;
        public Boolean enableStreamingApi;
        public String externalDataSource;
        public String externalName;
        public String externalRepository;
        public String externalSharingModel;
        public MetadataService.FieldSet[] fieldSets;
        public MetadataService.CustomField[] fields;
        public String gender;
        public MetadataService.HistoryRetentionPolicy historyRetentionPolicy;
        public Boolean household;
        public MetadataService.Index[] indexes;
        public String label;
        public MetadataService.ListView[] listViews;
        public MetadataService.CustomField nameField;
        public String pluralLabel;
        public Boolean recordTypeTrackFeedHistory;
        public Boolean recordTypeTrackHistory;
        public MetadataService.RecordType[] recordTypes;
        public MetadataService.SearchLayouts searchLayouts;
        public String sharingModel;
        public MetadataService.SharingReason[] sharingReasons;
        public MetadataService.SharingRecalculation[] sharingRecalculations;
        public String startsWith;
        public MetadataService.ValidationRule[] validationRules;
        public String visibility;
        public MetadataService.WebLink[] webLinks;
        private String[] actionOverrides_type_info = new String[]{'actionOverrides','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] allowInChatterGroups_type_info = new String[]{'allowInChatterGroups','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] articleTypeChannelDisplay_type_info = new String[]{'articleTypeChannelDisplay','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] businessProcesses_type_info = new String[]{'businessProcesses','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] compactLayoutAssignment_type_info = new String[]{'compactLayoutAssignment','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] compactLayouts_type_info = new String[]{'compactLayouts','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] customHelp_type_info = new String[]{'customHelp','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] customHelpPage_type_info = new String[]{'customHelpPage','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] customSettingsType_type_info = new String[]{'customSettingsType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] deploymentStatus_type_info = new String[]{'deploymentStatus','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] deprecated_type_info = new String[]{'deprecated','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableActivities_type_info = new String[]{'enableActivities','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableBulkApi_type_info = new String[]{'enableBulkApi','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableChangeDataCapture_type_info = new String[]{'enableChangeDataCapture','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableDivisions_type_info = new String[]{'enableDivisions','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableEnhancedLookup_type_info = new String[]{'enableEnhancedLookup','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableFeeds_type_info = new String[]{'enableFeeds','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableHistory_type_info = new String[]{'enableHistory','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableReports_type_info = new String[]{'enableReports','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableSearch_type_info = new String[]{'enableSearch','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableSharing_type_info = new String[]{'enableSharing','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableStreamingApi_type_info = new String[]{'enableStreamingApi','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] externalDataSource_type_info = new String[]{'externalDataSource','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] externalName_type_info = new String[]{'externalName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] externalRepository_type_info = new String[]{'externalRepository','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] externalSharingModel_type_info = new String[]{'externalSharingModel','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] fieldSets_type_info = new String[]{'fieldSets','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] fields_type_info = new String[]{'fields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] gender_type_info = new String[]{'gender','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] historyRetentionPolicy_type_info = new String[]{'historyRetentionPolicy','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] household_type_info = new String[]{'household','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] indexes_type_info = new String[]{'indexes','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] listViews_type_info = new String[]{'listViews','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] nameField_type_info = new String[]{'nameField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] pluralLabel_type_info = new String[]{'pluralLabel','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] recordTypeTrackFeedHistory_type_info = new String[]{'recordTypeTrackFeedHistory','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] recordTypeTrackHistory_type_info = new String[]{'recordTypeTrackHistory','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] recordTypes_type_info = new String[]{'recordTypes','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] searchLayouts_type_info = new String[]{'searchLayouts','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] sharingModel_type_info = new String[]{'sharingModel','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] sharingReasons_type_info = new String[]{'sharingReasons','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] sharingRecalculations_type_info = new String[]{'sharingRecalculations','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] startsWith_type_info = new String[]{'startsWith','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] validationRules_type_info = new String[]{'validationRules','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] visibility_type_info = new String[]{'visibility','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] webLinks_type_info = new String[]{'webLinks','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'}; 
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'actionOverrides','allowInChatterGroups','articleTypeChannelDisplay','businessProcesses','compactLayoutAssignment','compactLayouts','customHelp','customHelpPage','customSettingsType','deploymentStatus','deprecated','description','enableActivities','enableBulkApi','enableChangeDataCapture','enableDivisions','enableEnhancedLookup','enableFeeds','enableHistory','enableReports','enableSearch','enableSharing','enableStreamingApi','externalDataSource','externalName','externalRepository','externalSharingModel','fieldSets','fields','gender','historyRetentionPolicy','household','indexes','label','listViews','nameField','pluralLabel','recordTypeTrackFeedHistory','recordTypeTrackHistory','recordTypes','searchLayouts','sharingModel','sharingReasons','sharingRecalculations','startsWith','validationRules','visibility','webLinks'};
    }
    public class readMetadataResponse_element {
        public MetadataService.ReadResult result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class ReadResult {
        public MetadataService.Metadata[] records;
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class ReadCustomObjectResult implements IReadResult {
        public MetadataService.CustomObject[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readCustomObjectResponse_element implements IReadResponseElement {
        public MetadataService.ReadCustomObjectResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    } 
    public class ActionOverride {
        public String actionName;
        public String comment;
        public String content;
        public String formFactor;
        public Boolean skipRecordTypeSelect;
        public String type_x;
        private String[] actionName_type_info = new String[]{'actionName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] comment_type_info = new String[]{'comment','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] content_type_info = new String[]{'content','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] formFactor_type_info = new String[]{'formFactor','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] skipRecordTypeSelect_type_info = new String[]{'skipRecordTypeSelect','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'actionName','comment','content','formFactor','skipRecordTypeSelect','type_x'};
    }
    public class ArticleTypeChannelDisplay {
        public MetadataService.ArticleTypeTemplate[] articleTypeTemplates;
        private String[] articleTypeTemplates_type_info = new String[]{'articleTypeTemplates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'articleTypeTemplates'};
    }
    public class ArticleTypeTemplate {
        public String channel;
        public String page_x;
        public String template;
        private String[] channel_type_info = new String[]{'channel','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] page_x_type_info = new String[]{'page','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] template_type_info = new String[]{'template','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'channel','page_x','template'};
    }
    public class BusinessProcess extends Metadata {
        public String type = 'BusinessProcess';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String description;
        public Boolean isActive;
        public MetadataService.PicklistValue[] values;
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isActive_type_info = new String[]{'isActive','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] values_type_info = new String[]{'values','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'description','isActive','values'};
    }
    public class PicklistValue extends GlobalPicklistValue {
        public String type = 'PicklistValue';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String color;
        public Boolean default_x;
        public String description;
        public Boolean isActive;
        private String[] color_type_info = new String[]{'color','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] default_x_type_info = new String[]{'default','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isActive_type_info = new String[]{'isActive','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public Boolean allowEmail;
        public Boolean closed;
        public String[] controllingFieldValues;
        public Boolean converted;
        public Boolean cssExposed;
        public String forecastCategory;
        public Boolean highPriority;
        public Integer probability;
        public String reverseRole;
        public Boolean reviewed;
        public Boolean won;
        private String[] allowEmail_type_info = new String[]{'allowEmail','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] closed_type_info = new String[]{'closed','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] controllingFieldValues_type_info = new String[]{'controllingFieldValues','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] converted_type_info = new String[]{'converted','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] cssExposed_type_info = new String[]{'cssExposed','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] forecastCategory_type_info = new String[]{'forecastCategory','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] highPriority_type_info = new String[]{'highPriority','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] probability_type_info = new String[]{'probability','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] reverseRole_type_info = new String[]{'reverseRole','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] reviewed_type_info = new String[]{'reviewed','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] won_type_info = new String[]{'won','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName','color','default_x','description','isActive', 'allowEmail','closed','controllingFieldValues','converted','cssExposed','forecastCategory','highPriority','probability','reverseRole','reviewed','won'};
    }
    public virtual class GlobalPicklistValue extends Metadata {
        public String color;
        public Boolean default_x;
        public String description;
        public Boolean isActive;
        
    }
    public class CompactLayout extends Metadata {
        public String type = 'CompactLayout';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String[] fields;
        public String label;
        private String[] fields_type_info = new String[]{'fields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'fields','label'};
    }
    public class ReadCompactLayoutResult implements IReadResult {
        public MetadataService.CompactLayout[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readCompactLayoutResponse_element implements IReadResponseElement {
        public MetadataService.ReadCompactLayoutResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class FieldSet extends Metadata {
        public String type = 'FieldSet';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public MetadataService.FieldSetItem[] availableFields;
        public String description;
        public MetadataService.FieldSetItem[] displayedFields;
        public String label;
        private String[] availableFields_type_info = new String[]{'availableFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] displayedFields_type_info = new String[]{'displayedFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'availableFields','description','displayedFields','label'};
    }
    public class ReadFieldSetResult implements IReadResult {
        public MetadataService.FieldSet[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readFieldSetResponse_element implements IReadResponseElement {
        public MetadataService.ReadFieldSetResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class FieldSetItem {
        public String field;
        public Boolean isFieldManaged;
        public Boolean isRequired;
        private String[] field_type_info = new String[]{'field','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isFieldManaged_type_info = new String[]{'isFieldManaged','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isRequired_type_info = new String[]{'isRequired','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'field','isFieldManaged','isRequired'};
    }
    public class CustomField extends Metadata {
        public String type = 'CustomField';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public Boolean displayLocationInDecimal;
        public Integer gracePeriodDays;
        public Boolean caseSensitive;
        public String customDataType;
        public String defaultValue;
        public String deleteConstraint;
        public Boolean deprecated;
        public String description;
        public String displayFormat;
        public Boolean encrypted;
        public Boolean escapeMarkup;
        public String externalDeveloperName;
        public Boolean externalId;
        public String fieldManageability;
        public String formula;
        public String formulaTreatBlanksAs;
        public String inlineHelpText;
        public Boolean isConvertLeadDisabled;
        public Boolean isFilteringDisabled;
        public Boolean isNameField;
        public Boolean isSortingDisabled;
        public String label;
        public Integer length;
        public MetadataService.LookupFilter lookupFilter;
        public String maskChar;
        public String maskType;
        public String metadataRelationshipControllingField;
        public Boolean populateExistingRows;
        public Integer precision;
        public String referenceTargetField;
        public String referenceTo;
        public String relationshipLabel;
        public String relationshipName;
        public Integer relationshipOrder;
        public Boolean reparentableMasterDetail;
        public Boolean required;
        public Boolean restrictedAdminField;
        public Integer scale;
        public Integer startingNumber;
        public Boolean stripMarkup;
        public String summarizedField;
        public MetadataService.FilterItem[] summaryFilterItems;
        public String summaryForeignKey;
        public String summaryOperation;
        public Boolean trackFeedHistory;
        public Boolean trackHistory;
        public Boolean trackTrending;
        public String type_x;
        public Boolean unique;
        public MetadataService.ValueSet valueSet;
        public Integer visibleLines;
        public Boolean writeRequiresMasterRead;
        private String[] displayLocationInDecimal_type_info = new String[]{'displayLocationInDecimal','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] gracePeriodDays_type_info = new String[]{'gracePeriodDays','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] caseSensitive_type_info = new String[]{'caseSensitive','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] customDataType_type_info = new String[]{'customDataType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] defaultValue_type_info = new String[]{'defaultValue','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] deleteConstraint_type_info = new String[]{'deleteConstraint','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] deprecated_type_info = new String[]{'deprecated','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] displayFormat_type_info = new String[]{'displayFormat','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] encrypted_type_info = new String[]{'encrypted','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] escapeMarkup_type_info = new String[]{'escapeMarkup','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] externalDeveloperName_type_info = new String[]{'externalDeveloperName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] externalId_type_info = new String[]{'externalId','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] fieldManageability_type_info = new String[]{'fieldManageability','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] formula_type_info = new String[]{'formula','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] formulaTreatBlanksAs_type_info = new String[]{'formulaTreatBlanksAs','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] inlineHelpText_type_info = new String[]{'inlineHelpText','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isConvertLeadDisabled_type_info = new String[]{'isConvertLeadDisabled','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isFilteringDisabled_type_info = new String[]{'isFilteringDisabled','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isNameField_type_info = new String[]{'isNameField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isSortingDisabled_type_info = new String[]{'isSortingDisabled','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] length_type_info = new String[]{'length','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] lookupFilter_type_info = new String[]{'lookupFilter','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] maskChar_type_info = new String[]{'maskChar','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] maskType_type_info = new String[]{'maskType','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] metadataRelationshipControllingField_type_info = new String[]{'metadataRelationshipControllingField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] populateExistingRows_type_info = new String[]{'populateExistingRows','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] precision_type_info = new String[]{'precision','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] referenceTargetField_type_info = new String[]{'referenceTargetField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] referenceTo_type_info = new String[]{'referenceTo','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] relationshipLabel_type_info = new String[]{'relationshipLabel','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] relationshipName_type_info = new String[]{'relationshipName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] relationshipOrder_type_info = new String[]{'relationshipOrder','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] reparentableMasterDetail_type_info = new String[]{'reparentableMasterDetail','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] required_type_info = new String[]{'required','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] restrictedAdminField_type_info = new String[]{'restrictedAdminField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] scale_type_info = new String[]{'scale','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] startingNumber_type_info = new String[]{'startingNumber','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] stripMarkup_type_info = new String[]{'stripMarkup','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] summarizedField_type_info = new String[]{'summarizedField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] summaryFilterItems_type_info = new String[]{'summaryFilterItems','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] summaryForeignKey_type_info = new String[]{'summaryForeignKey','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] summaryOperation_type_info = new String[]{'summaryOperation','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] trackFeedHistory_type_info = new String[]{'trackFeedHistory','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] trackHistory_type_info = new String[]{'trackHistory','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] trackTrending_type_info = new String[]{'trackTrending','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] unique_type_info = new String[]{'unique','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] valueSet_type_info = new String[]{'valueSet','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] visibleLines_type_info = new String[]{'visibleLines','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] writeRequiresMasterRead_type_info = new String[]{'writeRequiresMasterRead','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'displayLocationInDecimal','gracePeriodDays','caseSensitive','customDataType','defaultValue','deleteConstraint','deprecated','description','displayFormat','encrypted','escapeMarkup','externalDeveloperName','externalId','fieldManageability','formula','formulaTreatBlanksAs','inlineHelpText','isConvertLeadDisabled','isFilteringDisabled','isNameField','isSortingDisabled','label','length','lookupFilter','maskChar','maskType','metadataRelationshipControllingField','populateExistingRows','precision','referenceTargetField','referenceTo','relationshipLabel','relationshipName','relationshipOrder','reparentableMasterDetail','required','restrictedAdminField','scale','startingNumber','stripMarkup','summarizedField','summaryFilterItems','summaryForeignKey','summaryOperation','trackFeedHistory','trackHistory','trackTrending','type_x','unique','valueSet','visibleLines','writeRequiresMasterRead'};
    }
    public class ReadCustomFieldResult implements IReadResult {
        public MetadataService.CustomField[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readCustomFieldResponse_element implements IReadResponseElement {
        public MetadataService.ReadCustomFieldResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class LookupFilter {
        public Boolean active;
        public String booleanFilter;
        public String description;
        public String errorMessage;
        public MetadataService.FilterItem[] filterItems;
        public String infoMessage;
        public Boolean isOptional;
        private String[] active_type_info = new String[]{'active','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] booleanFilter_type_info = new String[]{'booleanFilter','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] errorMessage_type_info = new String[]{'errorMessage','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] filterItems_type_info = new String[]{'filterItems','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] infoMessage_type_info = new String[]{'infoMessage','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isOptional_type_info = new String[]{'isOptional','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'active','booleanFilter','description','errorMessage','filterItems','infoMessage','isOptional'};
    }
    public class ReadCustomValueResult implements IReadResult {
        public MetadataService.CustomValue[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readCustomValueResponse_element implements IReadResponseElement {
        public MetadataService.ReadCustomValueResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }

    public class FilterItem {
        public String field;
        public String operation;
        public String value;
        public String valueField;
        private String[] field_type_info = new String[]{'field','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] operation_type_info = new String[]{'operation','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] value_type_info = new String[]{'value','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] valueField_type_info = new String[]{'valueField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'field','operation','value','valueField'};
    }
    public class ValueSet {
        public String controllingField;
        public Boolean restricted;
        public MetadataService.ValueSetValuesDefinition valueSetDefinition;
        public String valueSetName;
        public MetadataService.ValueSettings[] valueSettings;
        private String[] controllingField_type_info = new String[]{'controllingField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] restricted_type_info = new String[]{'restricted','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] valueSetDefinition_type_info = new String[]{'valueSetDefinition','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] valueSetName_type_info = new String[]{'valueSetName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] valueSettings_type_info = new String[]{'valueSettings','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'controllingField','restricted','valueSetDefinition','valueSetName','valueSettings'};
    }
    public class ValueSetValuesDefinition {
        public Boolean sorted;
        public MetadataService.CustomValue[] value;
        private String[] sorted_type_info = new String[]{'sorted','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] value_type_info = new String[]{'value','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'sorted','value'};
    }
    public virtual class CustomValue extends Metadata {
        public String fullName;
        public String color;
        public Boolean default_x;
        public String description;
        public Boolean isActive;
        public String label;
         private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] color_type_info = new String[]{'color','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};  
         private String[] default_x_type_info = new String[]{'default','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
          private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
           private String[] isActive_type_info = new String[]{'isActive','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
            private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'fullName','color','default_x','description','isActive','label'};
    }
    public class ValueSettings {
        public String[] controllingFieldValue;
        public String valueName;
        private String[] controllingFieldValue_type_info = new String[]{'controllingFieldValue','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] valueName_type_info = new String[]{'valueName','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'controllingFieldValue','valueName'};
    }
    public class HistoryRetentionPolicy {
        public Integer archiveAfterMonths;
        public Integer archiveRetentionYears;
        public String description;
        private String[] archiveAfterMonths_type_info = new String[]{'archiveAfterMonths','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] archiveRetentionYears_type_info = new String[]{'archiveRetentionYears','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'archiveAfterMonths','archiveRetentionYears','description'};
    }
    public class Index {
        public MetadataService.IndexField[] fields;
        private String[] fields_type_info = new String[]{'fields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'fields'};
    }
    public class IndexField {
        public String name;
        public String sortDirection;
        private String[] name_type_info = new String[]{'name','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] sortDirection_type_info = new String[]{'sortDirection','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'name','sortDirection'};
    }
    public class ListView extends Metadata {
        public String type = 'ListView';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String booleanFilter;
        public String[] columns;
        public String division;
        public String filterScope;
        public MetadataService.ListViewFilter[] filters;
        public String label;
        public String language;
        public String queue;
        public MetadataService.SharedTo sharedTo;
        private String[] booleanFilter_type_info = new String[]{'booleanFilter','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] columns_type_info = new String[]{'columns','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] division_type_info = new String[]{'division','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] filterScope_type_info = new String[]{'filterScope','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] filters_type_info = new String[]{'filters','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] language_type_info = new String[]{'language','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] queue_type_info = new String[]{'queue','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] sharedTo_type_info = new String[]{'sharedTo','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'booleanFilter','columns','division','filterScope','filters','label','language','queue','sharedTo'};
    }
    public class ReadListViewResult implements IReadResult {
        public MetadataService.ListView[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readListViewResponse_element implements IReadResponseElement {
        public MetadataService.ReadListViewResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class ListViewFilter {
        public String field;
        public String operation;
        public String value;
        private String[] field_type_info = new String[]{'field','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] operation_type_info = new String[]{'operation','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] value_type_info = new String[]{'value','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'field','operation','value'};
    }
    public class SharedTo {
        public String allCustomerPortalUsers;
        public String allInternalUsers;
        public String allPartnerUsers;
        public String[] group_x;
        public String[] groups;
        public String[] managerSubordinates;
        public String[] managers;
        public String[] portalRole;
        public String[] portalRoleAndSubordinates;
        public String[] queue;
        public String[] role;
        public String[] roleAndSubordinates;
        public String[] roleAndSubordinatesInternal;
        public String[] roles;
        public String[] rolesAndSubordinates;
        public String[] territories;
        public String[] territoriesAndSubordinates;
        public String[] territory;
        public String[] territoryAndSubordinates;
        private String[] allCustomerPortalUsers_type_info = new String[]{'allCustomerPortalUsers','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] allInternalUsers_type_info = new String[]{'allInternalUsers','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] allPartnerUsers_type_info = new String[]{'allPartnerUsers','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] group_x_type_info = new String[]{'group','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] groups_type_info = new String[]{'groups','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] managerSubordinates_type_info = new String[]{'managerSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] managers_type_info = new String[]{'managers','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] portalRole_type_info = new String[]{'portalRole','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] portalRoleAndSubordinates_type_info = new String[]{'portalRoleAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] queue_type_info = new String[]{'queue','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] role_type_info = new String[]{'role','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] roleAndSubordinates_type_info = new String[]{'roleAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] roleAndSubordinatesInternal_type_info = new String[]{'roleAndSubordinatesInternal','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] roles_type_info = new String[]{'roles','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] rolesAndSubordinates_type_info = new String[]{'rolesAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territories_type_info = new String[]{'territories','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territoriesAndSubordinates_type_info = new String[]{'territoriesAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territory_type_info = new String[]{'territory','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] territoryAndSubordinates_type_info = new String[]{'territoryAndSubordinates','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'allCustomerPortalUsers','allInternalUsers','allPartnerUsers','group_x','groups','managerSubordinates','managers','portalRole','portalRoleAndSubordinates','queue','role','roleAndSubordinates','roleAndSubordinatesInternal','roles','rolesAndSubordinates','territories','territoriesAndSubordinates','territory','territoryAndSubordinates'};
    }
    public class RecordType extends Metadata {
        public String type = 'RecordType';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public Boolean active;
        public String businessProcess;
        public String compactLayoutAssignment;
        public String description;
        public String label;
        public MetadataService.RecordTypePicklistValue[] picklistValues;
        private String[] active_type_info = new String[]{'active','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] businessProcess_type_info = new String[]{'businessProcess','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] compactLayoutAssignment_type_info = new String[]{'compactLayoutAssignment','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] picklistValues_type_info = new String[]{'picklistValues','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'active','businessProcess','compactLayoutAssignment','description','label','picklistValues'};
    }
    public class ReadRecordTypeResult implements IReadResult {
        public MetadataService.RecordType[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readRecordTypeResponse_element implements IReadResponseElement {
        public MetadataService.ReadRecordTypeResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class RecordTypePicklistValue {
        public String picklist;
        public MetadataService.PicklistValue[] values;
        private String[] picklist_type_info = new String[]{'picklist','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] values_type_info = new String[]{'values','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'picklist','values'};
    }
    public class SearchLayouts {
        public String[] customTabListAdditionalFields;
        public String[] excludedStandardButtons;
        public String[] listViewButtons;
        public String[] lookupDialogsAdditionalFields;
        public String[] lookupFilterFields;
        public String[] lookupPhoneDialogsAdditionalFields;
        public String[] searchFilterFields;
        public String[] searchResultsAdditionalFields;
        public String[] searchResultsCustomButtons;
        private String[] customTabListAdditionalFields_type_info = new String[]{'customTabListAdditionalFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] excludedStandardButtons_type_info = new String[]{'excludedStandardButtons','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] listViewButtons_type_info = new String[]{'listViewButtons','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] lookupDialogsAdditionalFields_type_info = new String[]{'lookupDialogsAdditionalFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] lookupFilterFields_type_info = new String[]{'lookupFilterFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] lookupPhoneDialogsAdditionalFields_type_info = new String[]{'lookupPhoneDialogsAdditionalFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] searchFilterFields_type_info = new String[]{'searchFilterFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] searchResultsAdditionalFields_type_info = new String[]{'searchResultsAdditionalFields','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] searchResultsCustomButtons_type_info = new String[]{'searchResultsCustomButtons','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'customTabListAdditionalFields','excludedStandardButtons','listViewButtons','lookupDialogsAdditionalFields','lookupFilterFields','lookupPhoneDialogsAdditionalFields','searchFilterFields','searchResultsAdditionalFields','searchResultsCustomButtons'};
    }
    public class SharingReason extends Metadata {
        public String type = 'SharingReason';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String label;
        private String[] label_type_info = new String[]{'label','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'label'};
    }
    public class ReadSharingReasonResult implements IReadResult {
        public MetadataService.SharingReason[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readSharingReasonResponse_element implements IReadResponseElement {
        public MetadataService.ReadSharingReasonResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class SharingRecalculation {
        public String className;
        private String[] className_type_info = new String[]{'className','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'className'};
    }
    public class ValidationRule extends Metadata {
        public String type = 'ValidationRule';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public Boolean active;
        public String description;
        public String errorConditionFormula;
        public String errorDisplayField;
        public String errorMessage;
        private String[] active_type_info = new String[]{'active','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] errorConditionFormula_type_info = new String[]{'errorConditionFormula','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] errorDisplayField_type_info = new String[]{'errorDisplayField','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] errorMessage_type_info = new String[]{'errorMessage','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'active','description','errorConditionFormula','errorDisplayField','errorMessage'};
    }
    public class ReadValidationRuleResult implements IReadResult {
        public MetadataService.ValidationRule[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readValidationRuleResponse_element implements IReadResponseElement {
        public MetadataService.ReadValidationRuleResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class WebLink extends Metadata {
        public String type = 'WebLink';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public String availability;
        public String description;
        public String displayType;
        public String encodingKey;
        public Boolean hasMenubar;
        public Boolean hasScrollbars;
        public Boolean hasToolbar;
        public Integer height;
        public Boolean isResizable;
        public String linkType;
        public String masterLabel;
        public String openType;
        public String page_x;
        public String position;
        public Boolean protected_x;
        public Boolean requireRowSelection;
        public String scontrol;
        public Boolean showsLocation;
        public Boolean showsStatus;
        public String url;
        public Integer width;
        private String[] availability_type_info = new String[]{'availability','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] displayType_type_info = new String[]{'displayType','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] encodingKey_type_info = new String[]{'encodingKey','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] hasMenubar_type_info = new String[]{'hasMenubar','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] hasScrollbars_type_info = new String[]{'hasScrollbars','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] hasToolbar_type_info = new String[]{'hasToolbar','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] height_type_info = new String[]{'height','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] isResizable_type_info = new String[]{'isResizable','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] linkType_type_info = new String[]{'linkType','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] masterLabel_type_info = new String[]{'masterLabel','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] openType_type_info = new String[]{'openType','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] page_x_type_info = new String[]{'page','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] position_type_info = new String[]{'position','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] protected_x_type_info = new String[]{'protected','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] requireRowSelection_type_info = new String[]{'requireRowSelection','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] scontrol_type_info = new String[]{'scontrol','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] showsLocation_type_info = new String[]{'showsLocation','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] showsStatus_type_info = new String[]{'showsStatus','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] url_type_info = new String[]{'url','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] width_type_info = new String[]{'width','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'availability','description','displayType','encodingKey','hasMenubar','hasScrollbars','hasToolbar','height','isResizable','linkType','masterLabel','openType','page_x','position','protected_x','requireRowSelection','scontrol','showsLocation','showsStatus','url','width'};
    }
    public class ReadWebLinkResult implements IReadResult {
        public MetadataService.WebLink[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readWebLinkResponse_element implements IReadResponseElement {
        public MetadataService.ReadWebLinkResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class SecuritySettings extends Metadata {
        public String type = 'SecuritySettings';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        public MetadataService.NetworkAccess networkAccess;
        public MetadataService.PasswordPolicies passwordPolicies;
        public MetadataService.SessionSettings sessionSettings;
        private String[] networkAccess_type_info = new String[]{'networkAccess','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] passwordPolicies_type_info = new String[]{'passwordPolicies','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] sessionSettings_type_info = new String[]{'sessionSettings','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'networkAccess','passwordPolicies','sessionSettings'};
    }
    public class ReadSecuritySettingsResult implements IReadResult {
        public MetadataService.SecuritySettings[] records;
        public MetadataService.Metadata[] getRecords() { return records; }
        private String[] records_type_info = new String[]{'records','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'records'};
    }
    public class readSecuritySettingsResponse_element implements IReadResponseElement {
        public MetadataService.ReadSecuritySettingsResult result;
        public IReadResult getResult() { return result; }
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/2006/04/metadata',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class NetworkAccess {
        public MetadataService.IpRange[] ipRanges;
        private String[] ipRanges_type_info = new String[]{'ipRanges','http://soap.sforce.com/2006/04/metadata',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'ipRanges'};
    }
    public class IpRange {
        public String description;
        public String end_x;
        public String start;
        private String[] description_type_info = new String[]{'description','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] end_x_type_info = new String[]{'end','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] start_type_info = new String[]{'start','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'description','end_x','start'};
    }
    public class PasswordPolicies {
        public String apiOnlyUserHomePageURL;
        public String complexity;
        public String expiration;
        public String historyRestriction;
        public String lockoutInterval;
        public String maxLoginAttempts;
        public String minimumPasswordLength;
        public Boolean minimumPasswordLifetime;
        public Boolean obscureSecretAnswer;
        public String passwordAssistanceMessage;
        public String passwordAssistanceURL;
        public String questionRestriction;
        private String[] apiOnlyUserHomePageURL_type_info = new String[]{'apiOnlyUserHomePageURL','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] complexity_type_info = new String[]{'complexity','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] expiration_type_info = new String[]{'expiration','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] historyRestriction_type_info = new String[]{'historyRestriction','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] lockoutInterval_type_info = new String[]{'lockoutInterval','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] maxLoginAttempts_type_info = new String[]{'maxLoginAttempts','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] minimumPasswordLength_type_info = new String[]{'minimumPasswordLength','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] minimumPasswordLifetime_type_info = new String[]{'minimumPasswordLifetime','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] obscureSecretAnswer_type_info = new String[]{'obscureSecretAnswer','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] passwordAssistanceMessage_type_info = new String[]{'passwordAssistanceMessage','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] passwordAssistanceURL_type_info = new String[]{'passwordAssistanceURL','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] questionRestriction_type_info = new String[]{'questionRestriction','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'apiOnlyUserHomePageURL','complexity','expiration','historyRestriction','lockoutInterval','maxLoginAttempts','minimumPasswordLength','minimumPasswordLifetime','obscureSecretAnswer','passwordAssistanceMessage','passwordAssistanceURL','questionRestriction'};
    }
    public class SessionSettings {
        public Boolean disableTimeoutWarning;
        public Boolean enableCSPOnEmail;
        public Boolean enableCSRFOnGet;
        public Boolean enableCSRFOnPost;
        public Boolean enableCacheAndAutocomplete;
        public Boolean enableClickjackNonsetupSFDC;
        public Boolean enableClickjackNonsetupUser;
        public Boolean enableClickjackNonsetupUserHeaderless;
        public Boolean enableClickjackSetup;
        public Boolean enableContentSniffingProtection;
        public Boolean enablePostForSessions;
        public Boolean enableSMSIdentity;
        public Boolean enableXssProtection;
        public Boolean enforceIpRangesEveryRequest;
        public Boolean forceLogoutOnSessionTimeout;
        public Boolean forceRelogin;
        public Boolean identityConfirmationOnTwoFactorRegistrationEnabled;
        public Boolean lockSessionsToDomain;
        public Boolean lockSessionsToIp;
        public String logoutURL;
        public Boolean requireHttpOnly;
        public Boolean requireHttps;
        public Boolean securityCentralKillSession;
        public String sessionTimeout;
        private String[] disableTimeoutWarning_type_info = new String[]{'disableTimeoutWarning','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableCSPOnEmail_type_info = new String[]{'enableCSPOnEmail','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableCSRFOnGet_type_info = new String[]{'enableCSRFOnGet','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableCSRFOnPost_type_info = new String[]{'enableCSRFOnPost','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableCacheAndAutocomplete_type_info = new String[]{'enableCacheAndAutocomplete','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableClickjackNonsetupSFDC_type_info = new String[]{'enableClickjackNonsetupSFDC','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableClickjackNonsetupUser_type_info = new String[]{'enableClickjackNonsetupUser','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableClickjackNonsetupUserHeaderless_type_info = new String[]{'enableClickjackNonsetupUserHeaderless','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableClickjackSetup_type_info = new String[]{'enableClickjackSetup','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableContentSniffingProtection_type_info = new String[]{'enableContentSniffingProtection','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enablePostForSessions_type_info = new String[]{'enablePostForSessions','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableSMSIdentity_type_info = new String[]{'enableSMSIdentity','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enableXssProtection_type_info = new String[]{'enableXssProtection','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] enforceIpRangesEveryRequest_type_info = new String[]{'enforceIpRangesEveryRequest','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] forceLogoutOnSessionTimeout_type_info = new String[]{'forceLogoutOnSessionTimeout','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] forceRelogin_type_info = new String[]{'forceRelogin','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] identityConfirmationOnTwoFactorRegistrationEnabled_type_info = new String[]{'identityConfirmationOnTwoFactorRegistrationEnabled','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] lockSessionsToDomain_type_info = new String[]{'lockSessionsToDomain','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] lockSessionsToIp_type_info = new String[]{'lockSessionsToIp','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] logoutURL_type_info = new String[]{'logoutURL','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] requireHttpOnly_type_info = new String[]{'requireHttpOnly','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] requireHttps_type_info = new String[]{'requireHttps','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] securityCentralKillSession_type_info = new String[]{'securityCentralKillSession','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] sessionTimeout_type_info = new String[]{'sessionTimeout','http://soap.sforce.com/2006/04/metadata',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/2006/04/metadata','true','false'};
        private String[] field_order_type_info = new String[]{'disableTimeoutWarning','enableCSPOnEmail','enableCSRFOnGet','enableCSRFOnPost','enableCacheAndAutocomplete','enableClickjackNonsetupSFDC','enableClickjackNonsetupUser','enableClickjackNonsetupUserHeaderless','enableClickjackSetup','enableContentSniffingProtection','enablePostForSessions','enableSMSIdentity','enableXssProtection','enforceIpRangesEveryRequest','forceLogoutOnSessionTimeout','forceRelogin','lockSessionsToDomain','lockSessionsToIp','logoutURL','securityCentralKillSession','sessionTimeout'};
    }

}