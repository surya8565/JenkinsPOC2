public with sharing class Claims_Ext1 {

    public Claims_Ext1(ApexPages.StandardController controller) 
    {
        objAcc = new Account();
        prepareData();
    }
    public List<WrapperClass> lstValues{get;set;}
    public String sValue{get;set;}
    public List<SelectOption> lstStatus {get;set;}
    public List<SelectOption> lstTypes {get;set;}
    public List<SelectOption> lstProducts {get;set;}
    public List<SelectOption> lstPlatforms {get;set;}
    Public List<String> lstSelectedTypes {get;set;}
    Public List<String> statusValues{get;set;}
    Public List<String> sPlatformSelected{get;set;}
    Public List<String> sBenfitsSelected{get;set;}
    Public List<String> stproduct{get;set;}
    public String sStatus{get;set;}
    public Account objAcc{get;set;}
    public String maps{get;set;}
    public String mapDates{get;set;}
    public Map<String,String> mapValues {get;set;}
    
    public class WrapperClass{
    
    public String sLine{get;set;}
    public String sSequence{get;set;}
    public String sBeginDOS{get;set;}
    public String sEndDOS{get;set;}
    public String sProc{get;set;}
    public String sBilled{get;set;}
    public String sAllowed{get;set;}
    public String sWrite{get;set;}
    public String sExcluded{get;set;}
    public String sDenied{get;set;}
    public String sCopay{get;set;}
    public String sDed{get;set;}
    public String sCoins{get;set;}
    public String sOICPaid{get;set;}
    public String sMbrResp{get;set;}
    public String sIntPnlty{get;set;}
    public String sPaid{get;set;}
    public String sEx{get;set;}
    }
    
    public void prepareData()
    {
        maps = '{"1" : "110&111&112&113&114&115&116&117&118&119&120&121&122", "2" :   "220&221&222&223&224&225&226&227&228&229&230&231&232", "3" : "330&331&332&333&334&335&336&337&338&339&340&341&342", "4" : "440&441&442&443&444&445&446&447&448&449&450&451&451"}';
        mapDates = '{"1" : "11/02/2014","2":"09/12/2013","3":"09/04/2014","4":"11/10/2016"}';
        
                       
        mapValues = new Map<String,String>();
        mapValues.put('1','One'); 
        mapValues.put('2','Two');
        mapValues.put('3','Three');
        mapValues.put('4','Four');
        sValue = 'Paid';
        lstValues = new List<WrapperClass>();
        Integer iClaimNum = 1234;
        WrapperClass oWQS1 =  new WrapperClass();
                oWQS1.sLine = '1';
                oWQS1.sSequence= '1';
                oWQS1.sBeginDOS= '09/04/2012';
                oWQS1.sEndDOS= '11/02/2014';
                oWQS1.sProc= 'Test Proc';
                oWQS1.sBilled= '$100';
                oWQS1.sAllowed= '$90';
                oWQS1.sWrite= '$10';
                oWQS1.sExcluded= '$0';
                oWQS1.sDenied= '$0';
                oWQS1.sCopay= '$0';
                oWQS1.sDed= '$50';
                oWQS1.sCoins= '$8';
                oWQS1.sOICPaid= '$0';
                oWQS1.sMbrResp= '$58';
                oWQS1.sIntPnlty= '$0';
                oWQS1.sPaid= '$32';
                oWQS1.sEx='232';
                lstValues.add(oWQS1);
                
                WrapperClass oWQS2 =  new WrapperClass();
                oWQS2.sLine = '1';
                oWQS2.sSequence= '2';
                oWQS2.sBeginDOS= '09/04/2012';
                oWQS2.sEndDOS= '09/12/2013';
                oWQS2.sProc= 'S990';
                oWQS2.sBilled= '$500';
                oWQS2.sAllowed= '$190';
                oWQS2.sWrite= '$19';
                oWQS2.sExcluded= '$9';
                oWQS2.sDenied= '$0';
                oWQS2.sCopay= '$0';
                oWQS2.sDed= '$60';
                oWQS2.sCoins= '$18';
                oWQS2.sOICPaid= '$0';
                oWQS2.sMbrResp= '$80';
                oWQS2.sIntPnlty= '$5';
                oWQS2.sPaid= '$25';
                oWQS2.sEx='145';
                lstValues.add(oWQS2); 
                
                WrapperClass oWQS5 =  new WrapperClass();
                oWQS5.sLine = '1';
                oWQS5.sSequence= '3';
                oWQS5.sBeginDOS= '09/04/2012';
                oWQS5.sEndDOS= '09/04/2014';
                oWQS5.sProc= 'S90';
                oWQS5.sBilled= '$500';
                oWQS5.sAllowed= '$190';
                oWQS5.sWrite= '$16';
                oWQS5.sExcluded= '$19';
                oWQS5.sDenied= '$10';
                oWQS5.sCopay= '$10';
                oWQS5.sDed= '$160';
                oWQS5.sCoins= '$180';
                oWQS5.sOICPaid= '$10';
                oWQS5.sMbrResp= '$28';
                oWQS5.sIntPnlty= '$10';
                oWQS5.sPaid= '$50';
                oWQS5.sEx='326';
                lstValues.add(oWQS5);
                
                WrapperClass oWQS8 =  new WrapperClass();
                oWQS8.sLine = '1';
                oWQS8.sSequence= '4';
                oWQS8.sBeginDOS= '10/24/2015';
                oWQS8.sEndDOS= '11/10/2016';
                oWQS8.sProc= 'S120';
                oWQS8.sBilled= '$50';
                oWQS8.sAllowed= '$10';
                oWQS8.sWrite= '$19';
                oWQS8.sExcluded= '$10';
                oWQS8.sDenied= '$0';
                oWQS8.sCopay= '$0';
                oWQS8.sDed= '$16';
                oWQS8.sCoins= '$76';
                oWQS8.sOICPaid= '$12';
                oWQS8.sMbrResp= '$18';
                oWQS8.sIntPnlty= '$113';
                oWQS8.sPaid= '$10';
                oWQS8.sEx='62';
                lstValues.add(oWQS8);
                
                WrapperClass oWQS3 =  new WrapperClass();
                oWQS3.sLine = '2';
                oWQS3.sSequence= '1';
                oWQS3.sBeginDOS= '10/04/2015';
                oWQS3.sEndDOS= '09/04/2012';
                oWQS3.sProc= 'S90';
                oWQS3.sBilled= '$50';
                oWQS3.sAllowed= '$19';
                oWQS3.sWrite= '$190';
                oWQS3.sExcluded= '$15';
                oWQS3.sDenied= '$10';
                oWQS3.sCopay= '$0';
                oWQS3.sDed= '$16';
                oWQS3.sCoins= '$76';
                oWQS3.sOICPaid= '$12';
                oWQS3.sMbrResp= '$18';
                oWQS3.sIntPnlty= '$113';
                oWQS3.sPaid= '$10';
                oWQS3.sEx='974';
                lstValues.add(oWQS3);
                
                WrapperClass oWQS4 =  new WrapperClass();
                oWQS4.sLine = '2';
                oWQS4.sSequence= '2';
                oWQS4.sBeginDOS= '09/04/2012';
                oWQS4.sEndDOS= '09/04/2012';
                oWQS4.sProc= 'S120';
                oWQS4.sBilled= '$50';
                oWQS4.sAllowed= '$10';
                oWQS4.sWrite= '$19';
                oWQS4.sExcluded= '$10';
                oWQS4.sDenied= '$15';
                oWQS4.sCopay= '$17';
                oWQS4.sDed= '$25';
                oWQS4.sCoins= '$39';
                oWQS4.sOICPaid= '$46';
                oWQS4.sMbrResp= '$51';
                oWQS4.sIntPnlty= '$0';
                oWQS4.sPaid= '$0';
                oWQS4.sEx='421';
                lstValues.add(oWQS4);
                
                WrapperClass oWQS6 =  new WrapperClass();
                oWQS6.sLine = '2';
                oWQS6.sSequence= '3';
                oWQS6.sBeginDOS= '09/04/2012';
                oWQS6.sEndDOS= '09/04/2012';
                oWQS6.sProc= 'S120';
                oWQS6.sBilled= '$50';
                oWQS6.sAllowed= '$10';
                oWQS6.sWrite= '$19';
                oWQS6.sExcluded= '$10';
                oWQS6.sDenied= '$0';
                oWQS6.sCopay= '$0';
                oWQS6.sDed= '$16';
                oWQS6.sCoins= '$76';
                oWQS6.sOICPaid= '$12';
                oWQS6.sMbrResp= '$18';
                oWQS6.sIntPnlty= '$113';
                oWQS6.sPaid= '$10';
                oWQS6.sEx='62';
                lstValues.add(oWQS6);
                
                WrapperClass oWQS7 =  new WrapperClass();
                oWQS7.sLine = '2';
                oWQS7.sSequence= '4';
                oWQS7.sBeginDOS= '09/04/2012';
                oWQS7.sEndDOS= '09/04/2012';
                oWQS7.sProc= 'S120';
                oWQS7.sBilled= '$50';
                oWQS7.sAllowed= '$10';
                oWQS7.sWrite= '$19';
                oWQS7.sExcluded= '$10';
                oWQS7.sDenied= '$0';
                oWQS7.sCopay= '$0';
                oWQS7.sDed= '$16';
                oWQS7.sCoins= '$76';
                oWQS7.sOICPaid= '$12';
                oWQS7.sMbrResp= '$18';
                oWQS7.sIntPnlty= '$113';
                oWQS7.sPaid= '$10';
                oWQS7.sEx='62';
                lstValues.add(oWQS7);
                
                integer j=3;
                integer k=1;
                integer l=2;
        for(Integer  i = 1; i< 70; i++)
        {
           Integer reminder = math.mod(i, 2);
           if(reminder == 0)
            {
                WrapperClass oWQS =  new WrapperClass();
                oWQS.sLine = string.valueOf(j);
                oWQS.sSequence= string.valueOf(l);
                oWQS.sBeginDOS= '09/04/2012';
                oWQS.sEndDOS= '09/04/2012';
                oWQS.sProc= '$0';
                oWQS.sBilled= '$50';
                oWQS.sAllowed= '$10';
                oWQS.sWrite= '$12';
                oWQS.sExcluded= '$15';
                oWQS.sDenied= '$10';
                oWQS.sCopay= '$0';
                oWQS.sDed= '$45';
                oWQS.sCoins= '$76';
                oWQS.sOICPaid= '$54';
                oWQS.sMbrResp= '$18';
                oWQS.sIntPnlty= '$0';
                oWQS.sPaid= '$10';
                oWQS.sEx='321';
                lstValues.add(oWQS);
                j++;
            }
            else
            {
                WrapperClass oWQS =  new WrapperClass();
                oWQS.sLine = string.valueOf(j);
                oWQS.sSequence= string.valueOf(k);
                oWQS.sBeginDOS= '09/04/2012';
                oWQS.sEndDOS= '09/04/2012';
                oWQS.sProc= 'S120';
                oWQS.sBilled= '$50';
                oWQS.sAllowed= '$10';
                oWQS.sWrite= '$0';
                oWQS.sExcluded= '$55';
                oWQS.sDenied= '$12';
                oWQS.sCopay= '$10';
                oWQS.sDed= '$62';
                oWQS.sCoins= '$98';
                oWQS.sOICPaid= '$25';
                oWQS.sMbrResp= '$0';
                oWQS.sIntPnlty= '$15';
                oWQS.sPaid= '$40';
                oWQS.sEx='978';
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
    
    
}