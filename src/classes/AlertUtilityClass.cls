public class AlertUtilityClass
{
    
    public Map<String, Schema.SObjectField> fieldMap{get;set;}
    public Map<String,Map<String, Schema.SObjectField>> objectFields{get;set;}
    public String objectType {get;set;}
    public String fieldtoCompare{get;set;}
    public String operator{get;set;}
    public String valueToCompare{get;set;}
    
    public void getAlerts(Id RecId)
    {
        List<sObject> listrec=new List<sObject>();
        List<Alert_Rule_Detail__c> alertDetailsRec=new List<Alert_Rule_Detail__c>();
        Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe(); 
        
        fieldMap =gd.get('Account').getDescribe().fields.getMap();
        String aquery='select Alert_Rule__c, Alert_Rule__r.Alert_Type__c, Field__c, Operartor__c, Value__c, Alert_Rule__r.Status__c, Alert_Rule__r.Start_Date__c, Alert_Rule__r.End_Date__c from Alert_Rule_Detail__c where Alert_Rule__r.Status__c!=\'Inactive\'' ;
        system.debug('Query is:'+ aquery);
        if(String.valueof(RecId).Startswith('001'))
        {
            objectType='Account';
        }
        String recQuery='select ';
        for(String field: fieldMap.keySet())
        {
            system.debug('entered');
            recQuery +=field+', ';
            
        }
        recQuery=recQuery.subString(0,recQuery.length()-2);
        system.debug('surya query1:'+recQuery);
        recQuery += ' from '+ objectType + ' Where id=:RecId';
        system.debug('surya query2:'+recQuery);
        listrec=Database.Query(recQuery);
        alertDetailsRec=Database.Query(aquery);
        for(Alert_Rule_Detail__c ad: alertDetailsRec)
        {
            fieldtoCompare=ad.Field__c;
            operator=ad.Operartor__c;
            valueToCompare=ad.Value__c;
            getAlertMessages(listrec,fieldtoCompare,operator,valueToCompare);
        }
        
    }
    
    public void getAlertMessages(List<sObject> listRec,String field,String op,String value)
    {
        for(sObject records: listRec)
        {
            for(String objField: fieldMap.keySet())
            {
                Account a=(Account)records;
                Schema.SObjectField ss=fieldMap.get(objField);
                String recValue=(String)records.get(objField);
                system.debug('field value is:'+recValue);
                if(fieldMap.get(objField).getDescribe().getLabel().toLowerCase().equals(field.toLowerCase()) )
                {
                
                }
            }
        }
    }
}