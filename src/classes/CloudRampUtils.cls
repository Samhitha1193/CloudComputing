public with sharing class CloudRampUtils {
	public static String getStringValue(Map<String, Object> mapV, String sValue) {
		
		String val = (String) mapV.get(sValue);
		if (String.isEmpty(val)){
			return '';
		} 
		return val;
		
	}

	public static Integer getIntegerValue(Map<String, Object> mapV, String sValue) {
		
		Integer val = (Integer) mapV.get(sValue);
		if (val == null || val == 0){
			return 0;
		} 
		return val;
		
	}

	public static Boolean getBooleanValue(Map<String, Object> mapV, String sValue) {
		
		Boolean val = (Boolean) mapV.get(sValue);
		if (val == null || val == false){
			return false;
		}
		return true;
		
	}

	public static Datetime getDateTimevalue(Map<String, Object> mapV, String sValue) {
		
		String val = (String) mapV.get(sValue);

		if (String.isEmpty(val)){
			return null;
		}  else {
			val = val.replace('T', ' ');
		}
		DateTime valDt =  DateTime.Valueof(val);
		return valDt; 
	}
}