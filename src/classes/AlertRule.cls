public with sharing class AlertRule {

    public String message {get;set;}
    public Id currentId{get;set;}
    public String email{get;set;}
    
    public AlertRule(ApexPages.StandardController controller) {
    system.debug(ApexPages.currentPage().getParameters().get('id'));
    currentId=ApexPages.currentPage().getParameters().get('id');
    AlertUtilityClass utl=new AlertUtilityClass();
    utl.getAlerts(currentId);
    
    }



}