public with sharing class ClaimsSummary_C_HUM1
 {

    public ClaimsSummary_C_HUM1(ApexPages.StandardController controller) 
    {
        objAcc = new Account();
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
    public String sClaimSearch{get;set;}
    public Map<String,WrapperClass> mapClaimData{get;set;}
    public Map<String,Boolean> mapDuplicateClaim{get;set;}
    public Boolean bClaimExists{get;set;}
    public Boolean bDuplicate{get;set;}
    
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
    public String sTaxId {get;set;}
    public String sNPI{get;set;}
    public String sGroupId {get;set;}
    public String sProdType{get;set;}
    }
    
    /*
     * Method Name   :  authDetailsRequest
     * Description   :  This method is used to Call the Service while loading the page
     * Return Type   :  Object
     * Parameters    :  NA
     */
    public void searchClaim() 
    {
        if(mapDuplicateClaim.containsKey(sClaimSearch))  
        {
            bClaimExists = false;   
            if(mapDuplicateClaim.get(sClaimSearch)) 
            {
                bDuplicate = true;
            }
            else
            {
                bDuplicate = false;
            }
        }  
        else
        {
            bClaimExists = true;  
              ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'No Claim/Pre-Determination Number found by that number'));
        }
    }
    
    
    
    public void prepareData()
    {
        sValue = 'Paid';
        lstValues = new List<WrapperClass>();
        mapClaimData = new Map<String,WrapperClass>();
        mapDuplicateClaim = new Map<String,Boolean>();
        Integer iClaimNum = 1234;
        bDuplicate = false;
        bClaimExists = false;
         WrapperClass oWQS1 =  new WrapperClass();
                oWQS1.sBeginDOS = '09/04/2012';
                oWQS1.sEndDOS = '11/06/2014';
                oWQS1.sClaimPreD = String.valueof(iClaimNum);
                oWQS1.sProviderName = 'Prasanthi dskdgdkjs  dkajdgksajd kasda skdsgj djksds akdgsak dgssgkjadsjkadgasjk';
                oWQS1.sBilledAmount = '120';
                oWQS1.sMbrResp = '300';
                oWQS1.sPaidAmt = '32';
                oWQS1.status = 'Paid';
                oWQS1.sLastProc = '09/04/2012';
                oWQS1.sAdjust = 'Y';
                oWQS1.sType = 'Medical';
                oWQS1.sPreD = 'N';
                oWQS1.sPlatform = 'CAS';
                oWQS1.sTaxId = 'TX'+String.valueof(iClaimNum);  
                oWQS1.sNPI = String.valueof(iClaimNum)+'NP'+String.valueof(iClaimNum);
                oWQS1.sGroupId = 'GRP'+String.valueof(iClaimNum+6);
                oWQS1.sProdType = 'MTV';
                mapClaimData.put(oWQS1.sClaimPreD,oWQS1);
                if(!mapDuplicateClaim.containsKey(oWQS1.sClaimPreD))     mapDuplicateClaim.put(oWQS1.sClaimPreD,false);
                else mapDuplicateClaim.put(oWQS1.sClaimPreD,true);
          lstValues.add(oWQS1);
          
          WrapperClass oWQS2 =  new WrapperClass();
                oWQS2.sBeginDOS = '10/14/2015';
                oWQS2.sEndDOS = '11/06/2015';
                oWQS2.sClaimPreD = String.valueof(iClaimNum);
                oWQS2.sProviderName = 'Prasanthi';
                oWQS2.sBilledAmount = '120';
                oWQS2.sMbrResp = '300';
                oWQS2.sPaidAmt = '32';
                oWQS2.status = 'Paid';
                oWQS2.sLastProc = '09/04/2012';
                oWQS2.sAdjust = 'Y';
                oWQS2.sType = 'Dental';
                oWQS2.sPreD = 'N';
                oWQS2.sPlatform = 'CAS';
                oWQS2.sReceipt = '05/16/2014'; 
                oWQS2.sTaxId = 'TX'+String.valueof(iClaimNum);  
                oWQS2.sNPI = String.valueof(iClaimNum)+'NP'+String.valueof(iClaimNum);
                oWQS2.sGroupId = 'GRP'+String.valueof(iClaimNum+6);
                oWQS2.sProdType = 'MTV'; 
                mapClaimData.put(oWQS2.sClaimPreD,oWQS2);
                if(!mapDuplicateClaim.containsKey(oWQS2.sClaimPreD))     mapDuplicateClaim.put(oWQS2.sClaimPreD,false);
                else mapDuplicateClaim.put(oWQS2.sClaimPreD,true);
                lstValues.add(oWQS2);
                
                WrapperClass oWQS3 =  new WrapperClass();
                oWQS3.sBeginDOS = '09/04/2016';
                oWQS3.sEndDOS = '11/06/2014';
                oWQS3.sClaimPreD = String.valueof(iClaimNum);
                oWQS3.sProviderName = 'Prasanthi';
                oWQS3.sBilledAmount = '120';
                oWQS3.sMbrResp = '300';
                oWQS3.sPaidAmt = '32';
                oWQS3.status = 'Pending';
                oWQS3.sLastProc = '09/04/2012';
                oWQS3.sAdjust = 'Y';
                oWQS3.sType = 'Medical';
                oWQS3.sPreD = 'N';
                oWQS3.sPlatform = 'CAS';
                oWQS3.sReceipt = '05/16/2014'; 
                oWQS3.sTaxId = 'TX'+String.valueof(iClaimNum);  
                oWQS3.sNPI = String.valueof(iClaimNum)+'NP'+String.valueof(iClaimNum);
                oWQS3.sGroupId = 'GRP'+String.valueof(iClaimNum+6);
                oWQS3.sProdType = 'MTV'; 
                mapClaimData.put(oWQS3.sClaimPreD,oWQS3);
                if(!mapDuplicateClaim.containsKey(oWQS3.sClaimPreD))     mapDuplicateClaim.put(oWQS3.sClaimPreD,false);
                else mapDuplicateClaim.put(oWQS3.sClaimPreD,true);
                lstValues.add(oWQS3);
                
                
                WrapperClass oWQS4 =  new WrapperClass();
                oWQS4.sBeginDOS = '09/04/2012';
                oWQS4.sEndDOS = '11/06/2014';
                oWQS4.sClaimPreD = String.valueof(iClaimNum);
                oWQS4.sProviderName = 'Prasanthi';
                oWQS4.sBilledAmount = '120';
                oWQS4.sMbrResp = '300';
                oWQS4.sPaidAmt = '32';
                oWQS4.status = 'Paid';
                oWQS4.sLastProc = '09/04/2012';
                oWQS4.sAdjust = 'Y';
                oWQS4.sType = 'Dental';
                oWQS4.sPreD = 'N';
                oWQS4.sPlatform = 'MTV';
                oWQS4.sReceipt = '05/16/2014';
                oWQS4.sTaxId = 'TX'+String.valueof(iClaimNum);  
                oWQS4.sNPI = String.valueof(iClaimNum)+'NP'+String.valueof(iClaimNum);
                oWQS4.sGroupId = 'GRP'+String.valueof(iClaimNum+6);
                oWQS4.sProdType = 'MTV';  
                mapClaimData.put(oWQS4.sClaimPreD,oWQS4);
                if(!mapDuplicateClaim.containsKey(oWQS4.sClaimPreD))     mapDuplicateClaim.put(oWQS4.sClaimPreD,false);
                else mapDuplicateClaim.put(oWQS4.sClaimPreD,true);
                lstValues.add(oWQS4);
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
                oWQS.sTaxId = 'TX'+String.valueof(iClaimNum);  
                oWQS.sNPI = String.valueof(iClaimNum)+'NP'+String.valueof(iClaimNum);
                oWQS.sGroupId = 'GRP'+String.valueof(iClaimNum+6);
                oWQS.sProdType = 'MTV'; 
                mapClaimData.put(oWQS.sClaimPreD,oWQS);
                if(!mapDuplicateClaim.containsKey(oWQS.sClaimPreD))     mapDuplicateClaim.put(oWQS.sClaimPreD,false);
                else mapDuplicateClaim.put(oWQS.sClaimPreD,true);
                lstValues.add(oWQS);
            }
            else
            {
                iClaimNum++;
                WrapperClass oWQS =  new WrapperClass();
                oWQS.sBeginDOS = '10/02/1990';
                oWQS.sEndDOS = '02/02/2002';
                oWQS.sClaimPreD = String.valueof(iClaimNum);
                oWQS.sProviderName = 'Sruthi';
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
                oWQS.sTaxId = 'TX'+String.valueof(iClaimNum);  
                oWQS.sNPI = String.valueof(iClaimNum)+'NP'+String.valueof(iClaimNum);
                oWQS.sGroupId = 'GRP'+String.valueof(iClaimNum+6);
                oWQS.sProdType = 'MTV';
                mapClaimData.put(oWQS.sClaimPreD,oWQS);
                if(!mapDuplicateClaim.containsKey(oWQS.sClaimPreD))     mapDuplicateClaim.put(oWQS.sClaimPreD,false);
                else mapDuplicateClaim.put(oWQS.sClaimPreD,true);
                lstValues.add(oWQS);      
            }
            if(i == 0 || i == 5 || i == 7 || i == 10)
            {
                iClaimNum++;
                WrapperClass oWQS =  new WrapperClass();
                oWQS.sBeginDOS = '09/04/2012';
                oWQS.sEndDOS = '11/10/2014';
                oWQS.sClaimPreD = String.valueof(iClaimNum);
                oWQS.sProviderName = 'Prasanthi';
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
                oWQS.sTaxId = 'TX'+String.valueof(iClaimNum);  
                oWQS.sNPI = String.valueof(iClaimNum)+'NP'+String.valueof(iClaimNum);
                oWQS.sGroupId = 'GRP'+String.valueof(iClaimNum+6);
                oWQS.sProdType = 'MTV'; 
                mapClaimData.put(oWQS.sClaimPreD,oWQS);
                if(!mapDuplicateClaim.containsKey(oWQS.sClaimPreD))     mapDuplicateClaim.put(oWQS.sClaimPreD,false);
                else mapDuplicateClaim.put(oWQS.sClaimPreD,true);
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