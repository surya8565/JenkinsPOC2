public with sharing class ClaimDetailsv1_C_HUM {

    public ClaimDetailsv1_C_HUM(ApexPages.StandardController controller) 
    {
        sClaimNumber = ApexPages.currentPage().getParameters().get('ClaimId');
        Cols = 5;
        lstStrtValues =  new List<String>();
        mapValues = new Map<Integer,List<String>>();
        for(Integer i = 0; i< 12;i++)
        {
            lstStrtValues.add('12233'+String.valueOf(i));   
        }   
        
        getData(); 
        prepareData();
    }


public Map<Integer,List<String>> mapValues{get;set;}
public List<String> lstStrtValues {get;set;} 
public Integer Cols{get;set;}
public boolean bMedicalFlag{get;set;}
public String sClaimNumber {get;set;}
public WrapperClassforDetails oWrap{get;set;}
public Boolean bShowDef {get;set;}
public String maps{get;set;}
public String mapDates{get;set;}
public String asyncmap{get;set;}
public String rowdetails{get;set;}
public String mtvclaims{get;set;}
public String claimpaymentdetails{get;set;}


public void getData()
{   
    bShowDef =  true; 
    oWrap = new WrapperClassforDetails();
    
    oWrap.sBeginDate = '12/03/1990';
    oWrap.sSource = 'Other';
    oWrap.sEndDate = '09/01/2018';
    oWrap.sRecieptDate = '12/20/1998';
    oWrap.sClaimType = 'Medical';
    if(oWrap.sClaimType == 'Medical')
    bMedicalFlag = true;
    else 
    bMedicalFlag = false;
    oWrap.sLastProcDate = '12/03/2012';
    oWrap.sPAN = '123456';
    oWrap.sPreD = 'N';
    oWrap.sAdj = 'Y';
    oWrap.sAuthReferrlNum = '444444';
    oWrap.sAdjId = '2345';
    oWrap.sPlatform = 'MTV';
    oWrap.sDiagnosis = '32734';
    oWrap.sDeficiency = 'Yes';
}

public void prepareData()
    {
        maps = '{"1" : "110&111&112&113&114&115&116&117&118&119&120&121&122", "2" :   "220&221&222&223&224&225&226&227&228&229&230&231&232", "3" : "330&331&332&333&334&335&336&337&338&339&340&341&342", "4" : "440&441&442&443&444&445&446&447&448&449&450&451&451"}';
        mapDates = '{"1" : "11/02/2014","2":"09/12/2013","3":"09/04/2014","4":"11/10/2016"}';
        asyncmap = '{"data": [{"name": "Tiger Nixon","position": "System Architect","office": "Edinburgh","extn": "5421","start_date": "2011/04/25","salary": "$320,800"}]}';
        //rowdetailss = '{"data": [{"name": "Tiger Nixon","position": "System Architect","salary": "$320,800","start_date": "2011/04/25","office": "Edinburgh","extn": "5421"}]}';               
        rowdetails ='{"data": [{"line":"1","sequence":"4","begindos":"10/24/2015","enddos":"11/10/2016","proc":"S120","billedamount":"$50","allowed":"$10","writeoff":"$19","excluded":"$190","denied":"$80","copay":"$12","ded":"$0","coins":"$10","oicpaid":"$10","mbrresp":"$15","pnlty":"$10","paid":"$0","ex":"234","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"200","modifier":"AS","units":"3","minutes":"30","cousecode":"342D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"6H0","description":"This is an example of explanantion test","description2":"This is an example of explanantion desc2"},{"name":"8F1","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"1","sequence":"3","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"1","sequence":"2","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"1","sequence":"1","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"2","sequence":"1","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"2","sequence":"2","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"2","sequence":"3","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"2","sequence":"4","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"3","sequence":"1","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"3","sequence":"2","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"3","sequence":"3","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"4","sequence":"1","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"4","sequence":"2","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"4","sequence":"4","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}},';
        rowdetails += '{"line":"4","sequence":"3","begindos":"10/12/2015","enddos":"04/06/2015","proc":"S123 Proc","billedamount":"$2500","allowed":"$2600","writeoff":"$20","excluded":"$0","denied":"$0","copay":"$120","ded":"$40","coins":"$200","oicpaid":"$630","mbrresp":"$98","pnlty":"$0","paid":"$10","ex":"458","diagnosis":{"diagnosisres":[{"code":"000.2"},{"code":"15.3"},{"code":"0042.8"},{"code":"46.90"},{"code":"12.2"}]},"revenue":"54","modifier":"CAS","units":"5","minutes":"120","cousecode":"1432D","toothcode":"145E","toothsurface":"Surface","explanation":{"Explanationtab":[{"name":"AP29","description":"This is an example of explanantion test1","description2":"This is an example of explanantion desc2"}]}}]}';
        
        
        mtvclaims ='{"data": [{"entitytype":"Claim","identifier":"4614011","type":"PR","category":"MTV","createddate":"11/10/2016","text":"completed","mtvtext":{"mtvtextt":[{"text":"gation completed"}]}},';
        mtvclaims += '{"entitytype":"Claim","identifier":"4614012","type":"6LS","category":"","createddate":"11/10/2016","text":"Letter sent by InSystems","mtvtext":{"mtvtextt":[{"text":"Letter sent by InSystems"}]}},';
        mtvclaims += '{"entitytype":"Claim","identifier":"4614013","type":"6LTI","category":"","createddate":"11/10/2016","text":"PayDX","mtvtext":{"mtvtextt":[{"text":"PayDX"}]}},';
        mtvclaims += '{"entitytype":"Claim","identifier":"4614014","type":"PXLR","category":"MTV","createddate":"11/10/2016","text":"Humana PGA","mtvtext":{"mtvtextt":[{"text":"Humana PGA"}]}},';
        mtvclaims += '{"entitytype":"Claim","identifier":"4614015","type":"ADD","category":"","createddate":"11/10/2016","text":"Description","mtvtext":{"mtvtextt":[{"text":"Description"}]}}]}';
        
        claimpaymentdetails ='{"data": [{"seq":"3","payment":"$50.00","method":"ACH","issuedate":"11/10/2016","paymentmethodid":"123456789","payee":"P - Provider","status":"C - Cleared","statusdate":"10/12/15","remittanceid":"$190","payeename":"$80","payeeid":"$12","payeeaddress":"$0","bankname":"$10","voucher":"$10","claimnumbers":{"claimnumber":[{"claimnumber":"67841","paidamount":"$10.00"},{"claimnumber":"85623","paidamount":"$15.00"},{"claimnumber":"45216","paidamount":"$18.00"},{"claimnumber":"78965","paidamount":"$80.00"},{"claimnumber":"45126","paidamount":"$8.00"}]}},';
        claimpaymentdetails += '{"seq":"4","payment":"$100.00","method":"ACH","issuedate":"11/10/2016","paymentmethodid":"0123456789","payee":"P - Provider","status":"C-Cleared","statusdate":"05/04/16","remittanceid":"$150","payeename":"$80","payeeid":"$12","payeeaddress":"$0","bankname":"$10","voucher":"$10","claimnumbers":{"claimnumber":[{"claimnumber":"6H0","paidamount":"$8.00"},{"claimnumber":"6H0","paidamount":"$8.00"}]}},';
        claimpaymentdetails += '{"seq":"1","payment":"$100.00","method":"ACH","issuedate":"11/10/2016","paymentmethodid":"0123456789","payee":"P - Provider","status":"C-Cleared","statusdate":"05/04/16","remittanceid":"$150","payeename":"$80","payeeid":"$12","payeeaddress":"$0","bankname":"$10","voucher":"$10","claimnumbers":{"claimnumber":[{"claimnumber":"6H0","paidamount":"$8.00"},{"claimnumber":"6H0","paidamount":"$8.00"}]}},';
        claimpaymentdetails += '{"seq":"2","payment":"$100.00","method":"ACH","issuedate":"11/10/2016","paymentmethodid":"0123456789","payee":"P - Provider","status":"C-Cleared","statusdate":"05/04/16","remittanceid":"$150","payeename":"$80","payeeid":"$12","payeeaddress":"$0","bankname":"$10","voucher":"$10","claimnumbers":{"claimnumber":[{"claimnumber":"6H0","paidamount":"$8.00"},{"claimnumber":"6H0","paidamount":"$8.00"}]}}]}';
    
        
    }
    
public void showDef()
{
    bShowDef =  true;
    System.debug('Value Changed'+bShowDef);
}

@RemoteAction
public static RationalData getRationale(string data,String sSeqNum) {

JSONParser parser = JSON.createParser(data);

if(sSeqNum.equals('4'))
{
    RationalData oRData = new RationalData ();
    oRData.sCodeEditingApplied = 'Y';
    oRData.sExplationCode = 'iHealth';
    oRData.sRational = 'Access the Claim Inquiry Tool for code editing rationale';
    return oRData;
}
else if(sSeqNum.equals('3'))
{
    RationalData oRData = new RationalData ();
    oRData.sCodeEditingApplied = 'Y';
    oRData.sExplationCode = 'NoniHealth';
    oRData.sRational = 'This is biggest sentence that you need to split and show only few charachters, few means 40 chars, after that please diaplying hide link';  
    return oRData;  
}
else
{
    RationalData oRData = new RationalData ();
    oRData.sCodeEditingApplied = 'N'; 
    return oRData;
}
}

public class RationalData
{
    public String sCodeEditingApplied {get;set;}
    public String sExplationCode {get;set;}
    public String sRational {get;set;}
}

@RemoteAction
public static string getMtvData() 
{
    String mtvclaims;
    mtvclaims ='{"data": [{"entitytype":"Claim","identifier":"4614011","type":"PR","category":"MTV","createddate":"11/10/2016","text":"completed","mtvtext":{"mtvtextt":[{"text":"gation completed"}]}},';
            mtvclaims += '{"entitytype":"Claim","identifier":"4614012","type":"6LS","category":"","createddate":"11/10/2016","text":"Letter sent by InSystems","mtvtext":{"mtvtextt":[{"text":"Letter sent by InSystems"}]}},';
            mtvclaims += '{"entitytype":"Claim","identifier":"4614013","type":"6LTI","category":"","createddate":"11/10/2016","text":"PayDX","mtvtext":{"mtvtextt":[{"text":"PayDX"}]}},';
            mtvclaims += '{"entitytype":"Claim","identifier":"4614014","type":"PXLR","category":"MTV","createddate":"11/10/2016","text":"Humana PGA","mtvtext":{"mtvtextt":[{"text":"Humana PGA"}]}},';
            mtvclaims += '{"entitytype":"Claim","identifier":"4614015","type":"ADD","category":"","createddate":"11/10/2016","text":"Description","mtvtext":{"mtvtextt":[{"text":"Description"}]}}]}';
    return mtvclaims;        
    
}

 public class RationaleDTO{
 public List<ExCode> lstexcode{get;set;}
 public List<RejectedProcedureCodes> lstrejcodes{get;set;}
 }
 
 public class ExCode{
 public string ExCode{get;set;}
 }
 public class RejectedProcedureCodes{
 public string ExCode{get;set;}
 public string Platform{get;set;}
 public string ProcedureCode{get;set;}
 }
 
public class WrapperClassforDetails
{
    public String sBeginDate {get;set;}
    public String sSource {get;set;}
    public String sEndDate {get;set;}
    public String sRecieptDate {get;set;}
    public String sClaimType {get;set;}
    public String sLastProcDate {get;set;}
    public String sPAN {get;set;}
    public String sPreD {get;set;} // For Detail otherwise blank cell
    public String sAdj {get;set;}
    public String sAuthReferrlNum {get;set;} // For Medical as a link
    public String sAdjId {get;set;}
    public String sPlatform{get;set;}
    public String sDiagnosis{get;set;}
    public String sDeficiency{get;set;}
}
}