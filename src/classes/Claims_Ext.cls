public with sharing class Claims_Ext {

    public Claims_Ext(ApexPages.StandardController controller) 
    {
        objAcc = new Account();

        sMaxDate = '10/02/2015';
        prepareData();
    }
    public List<WrapperClass> lstValues{get;set;}
    public String sValue{get;set;}
    public List<SelectOption> lstStatus {get;set;}
    public List<SelectOption> lstTypes {get;set;}
    public List<SelectOption> lstProducts {get;set;}
    public List<SelectOption> lstBenfits {get;set;}
    public List<SelectOption> lstPlatforms {get;set;}
    Public List<String> lstSelectedTypes {get;set;}
    Public List<String> statusValues{get;set;}
    Public List<String> sPlatformSelected{get;set;}
    Public List<String> sBenfitsSelected{get;set;}
    Public List<String> stproduct{get;set;}
    public String sStatus{get;set;}
    public Account objAcc{get;set;}
    public String sMinDate {get;set;}
    public String sMaxDate {get;set;}
    public Map<String,String> mapValues {get;set;}
    
    public class WrapperClass{
    
    public String sBeginDOS{get;set;}
    public String sEndDOS{get;set;}
    public String sClaimPreD{get;set;}
    public String sProviderName{get;set;}
    public String sBilledAmount{get;set;}
    public String sMbrResp{get;set;}
    public String sPaidAmt{get;set;}
    public String status{get;set;}
    public String sLastProc{get;set;}
    public String sAdjust{get;set;}
    public String sType{get;set;}
    public String sPreD{get;set;}
    public String sPlatform{get;set;}
    public String sReceipt{get;set;}
    }
    
    public void prepareData()
    {
        sValue = 'Paid';
        mapValues = new Map<String,String>();
        mapValues.put('valueOne','One');
        mapValues.put('valueTwo','Two');
        lstValues = new List<WrapperClass>();
        Integer iClaimNum = 1234;
        sMinDate = '10/02/1990';
        sMaxDate = '10/02/2015';
        for(Integer  i = 0; i< 70; i++)
        {
            if(i/2 == 0)
            {
                iClaimNum++;
                WrapperClass oWQS =  new WrapperClass();
                oWQS.sBeginDOS = '09/04/2012';
                oWQS.sEndDOS = '11/06/2014';
                oWQS.sClaimPreD = String.valueof(iClaimNum);
                oWQS.sProviderName = 'Surya';
                oWQS.sBilledAmount = '120';
                oWQS.sMbrResp = '300';
                oWQS.sPaidAmt = '32';
                oWQS.status = 'Paid';
                oWQS.sLastProc = '09/04/2012';
                oWQS.sAdjust = 'Y';
                oWQS.sType = 'Medical';
                oWQS.sPreD = 'N';
                oWQS.sPlatform = 'MTV';
                oWQS.sReceipt = '05/16/2014';  
                lstValues.add(oWQS);
            }
            else
            {
                iClaimNum++;
                WrapperClass oWQS =  new WrapperClass();
                oWQS.sBeginDOS = '10/02/1990';
                oWQS.sEndDOS = '02/02/2002';
                oWQS.sClaimPreD = String.valueof(iClaimNum);
                oWQS.sProviderName = 'Surya';
                oWQS.sBilledAmount = '120';
                oWQS.sMbrResp = '300';
                oWQS.sPaidAmt = '32';
                oWQS.status = 'Pending';
                oWQS.sLastProc = '02/26/2012';
                oWQS.sAdjust = 'Y';
                oWQS.sType = 'Dental';
                oWQS.sPreD = 'N';
                oWQS.sPlatform = 'CAS';
                oWQS.sReceipt = '07/04/2000'; 
                lstValues.add(oWQS);      
            }
            if(i == 0 || i == 5 || i == 7 || i == 10)
            {
                iClaimNum++;
                WrapperClass oWQS =  new WrapperClass();
                oWQS.sBeginDOS = '09/04/2012';
                oWQS.sEndDOS = '11/10/2014';
                oWQS.sClaimPreD = String.valueof(iClaimNum);
                oWQS.sProviderName = 'This is the big senetence, So you have to split it and display in 3 lines using wrap and ellipses';
                oWQS.sBilledAmount = '120';
                oWQS.sMbrResp = '300';
                oWQS.sPaidAmt = '32';
                oWQS.status = 'Paid';
                oWQS.sLastProc = '09/04/2012';
                oWQS.sAdjust = 'Y';
                oWQS.sType = 'Medical';
                oWQS.sPreD = 'N';
                oWQS.sPlatform = 'MTV';
                oWQS.sReceipt = '05/16/2014';  
                lstValues.add(oWQS);
            }
        }
         
    }
    
    public List<SelectOption> getItems() 
    {
        lstStatus = new List<SelectOption>();
        lstStatus.add(new SelectOption('Pending','Pending'));  
        lstStatus.add(new SelectOption('Paid','Paid')); 
        return lstStatus;    
    }
    
    public List<SelectOption> getTypes() 
    {
        lstTypes = new List<SelectOption>();
        lstTypes.add(new SelectOption('Ambultory','Ambultory'));  
        lstTypes.add(new SelectOption('Dental','Dental')); 
        return lstTypes;    
    }
    
    public List<SelectOption> getProducts() 
    {
        lstProducts = new List<SelectOption>();
        lstProducts.add(new SelectOption('Medical','Medical'));  
        lstProducts.add(new SelectOption('Dental','Dental')); 
        return lstProducts;    
    }
    
    public List<SelectOption> getPlatform() 
    {
        lstPlatforms = new List<SelectOption>();
        lstPlatforms.add(new SelectOption('MTV','MTV'));  
        lstPlatforms.add(new SelectOption('CAS','CAS')); 
        return lstPlatforms;    
    }
    
    public List<SelectOption> getBenifits() 
    {
        lstBenfits = new List<SelectOption>();
        lstBenfits.add(new SelectOption('Deductable','Deductable'));  
        lstBenfits.add(new SelectOption('Copay','Copay')); 
        return lstBenfits;    
    }
}