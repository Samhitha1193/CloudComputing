/**
*  @Author CloudRamp LLC  
*  Copyright to CloudRamp LLC 
*  All rights Reserved
*/

public with sharing class SalesforceConnector {

	private static final Double API_VERSION_DOUBLE = 40.0;//TODO  Move this to custom Metadata
	private static final String API_VERSION='v' + API_VERSION_DOUBLE;
	private static final String POST_METHOD = 'POST';
	private static final String GET_METHOD = 'GET';
	private static final String CALLOUT_STRING = 'callout:';
	private static final String SOBJECT_QUERY = '/services/data/' + API_VERSION + '/query/?q=';
	private static final String TOOLING_QUERY = '/services/data/' + API_VERSION + '/tooling/query/?q=';
	private static final String METADATA_SERVICE = '/services/Soap/m/' + API_VERSION_DOUBLE + '/';

	
	/**
	Process Tooling Queries
	@params namedCredential - String
	@params q - String
	@return String
	 */
	public String toolingQuery(String namedCredential, String q){
		return query(CALLOUT_STRING + namedCredential + TOOLING_QUERY + q,GET_METHOD);
	}

    public String toolingMoreQuery(String namedCredential, String q){
		return query(CALLOUT_STRING + namedCredential + q,GET_METHOD);
	}

	/**
	Process Sobject Queries
	@params namedCredential - String
	@params q - String
	@return String
	 */
	public String sObjectQuery(String namedCredential, String q){
		return query(CALLOUT_STRING + namedCredential + SOBJECT_QUERY + q,GET_METHOD);
	}

	/**
	Process Sobject Queries
	@params namedCredential - String
	@params q - String
	@return String
	 */
	public String sObjectMoreQuery(String namedCredential, String q){
		return query(CALLOUT_STRING + namedCredential + q,GET_METHOD);
	}

	/**
	List Metadata
	@params namedCredential - String
	@params type  - String
	@return MetadataService.FileProperties
	 */
	public MetadataService.FileProperties[] listMetadata(String namedCredential, String type){
		return listMetadata(namedCredential,new List<String>{type});
	}
 
	/**
	Read Metadata
	@params namedCredential - String
	@params type  - String
	@return MetadataService.IReadResul
	 */
	public MetadataService.IReadResult readMetadata(String namedCredential, String type){
		return readMetadata(namedCredential,type,new List<String>{'*'});
	}

	/**
	Read Metadata
	@params namedCredential - String
	@params type  - String
	@return MetadataService.IReadResul
	 */
	public MetadataService.IReadResult readMetadata(String namedCredential, String type, String[] names){
		MetadataService.MetadataPort mp = new MetadataService.MetadataPort();
		mp.endpoint_x = CALLOUT_STRING + namedCredential + METADATA_SERVICE;
		mp.SessionHeader = setSessionHeader(mp);
		MetadataService.IReadResult iReadResult = 	mp.readMetadata(type,names);
		return iReadResult;
	}

	/**
	List Metadata
	@params namedCredential - String
	@params type  - String[]
	@return MetadataService.FileProperties
	 */
	public MetadataService.FileProperties[] listMetadata(String namedCredential, String[] types){
		MetadataService.ListMetadataQuery[] queries = new List<MetadataService.ListMetadataQuery>();
		for (String s : types){
			MetadataService.ListMetadataQuery query = new MetadataService.ListMetadataQuery();
			query.type_x = s;
			queries.add(query);
		}
		
		MetadataService.MetadataPort mp = new MetadataService.MetadataPort();
		mp.endpoint_x = CALLOUT_STRING + namedCredential + METADATA_SERVICE;
		mp.SessionHeader = setSessionHeader(mp);
		MetadataService.FileProperties[] filePropertiesList = 
		mp.listMetadata(queries,API_VERSION_DOUBLE);
		return filePropertiesList;
	}

	/**
	Process Tooling Queries
	@params method - String
	@params q - String
	@return String
	 */
	private String query(String q, String method){
		return query(q,GET_METHOD,'');

	}

	/**
	Process Tooling Queries
	@params method - String
	@params q - String
	@params body - String
	@return String
	 */
	private String query(String q, String method,String  body){
		Map<String,String> headerMap = new Map<String,String>{
				'Content-Type'=> 'application/json'
		};
		HTTPRequest request = getHTTPRequest(q, method,body,headerMap);
		HTTPResponse hResponse = sendRequest(request);
		return hResponse.getBody();

	}

	/**
	Build HTTP Request
	@returns HTTPRequest
	 */
	private HTTPRequest getHTTPRequest(String url, String method, String body, Map<String,String> headerMap){
		HttpRequest request = new HttpRequest();
		for (String s: headerMap.keySet()){
			request.setHeader(s, headerMap.get(s));
		}
		request.setEndPoint(url);
		request.setMethod(method);
		if (String.isNotBlank(body)){
			request.setBody(body);	
		}
			
		return request;
	}


	/**
	Connect to the end point to send the request
	@returns HTTPResponse
	@throws SalesforceConnectorException -- Invalid Status Code
	 */
	private HTTPResponse sendRequest(HTTPRequest request){
		HTTP http = new HTTP();
		HTTPResponse response  = http.send(request);
		if (response != null && 
            (response.getStatusCode() == 200 || response.getStatusCode() == 302)){
			return response;
		} else {
			throw new SalesforceConnectorException('Error with the REST call.  Response Code ' + response.getStatusCode() + ' Body: ' + response.getBody());
		}
		return null;
	}

	/**
	Set Session Header
	@param MetadataService.MetadataPort m
	@return MetadataService.SessionHeader_elemen
	 */
	private MetadataService.SessionHeader_element setSessionHeader(MetadataService.MetadataPort mp) {
		mp.SessionHeader = new MetadataService.SessionHeader_element();
		mp.SessionHeader.sessionId = '{!$Credential.OAuthToken}'; 
		return mp.SessionHeader;
	}


}