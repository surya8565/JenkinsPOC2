public class accountCreation_recordtype {
    
    Public String acountName {get; set;}
    Public String serialNum{get; set;}
    Public String SLA{get; set;}
    public String SLA1 = String.valueOf(SLA);
    
    
    
    public accountCreation_recordtype(ApexPages.StandardController controller) 
    {
        Account a=(Account)controller.getRecord();
        system.debug('surya :'+ a.Name);
    }
    public PageReference NewButton()
    {
    PageReference page1=new PageReference('/setup/ui/recordtypeselect.jsp?ent=Account&retURL=%2F001%2Fo&save_new_url=%2F001%2Fe%3FretURL%3D%252F001%252Fo');
   // PageReference page1= page.Account_PageRedirect;
     page1.getParameters().put('AccountName', 'surya');
    page1.getParameters().put('serialNum', 'hello');
    page1.getParameters().put('SLA', 'hello');
    page1.setRedirect(true);
    return page1;
    
    }

}