global class utilities{

@RemoteAction
    global static boolean validCaptcha(string challenge, string response)
    {
      boolean correctResponse = false;
      string secret = '6LfPbwkTAAAAANWoYG7sXpybn8uU9nsEx5N0gEeU';
      string publicKey = '6LfPbwkTAAAAAPZJOefkWbXyYMbtFNBYH6FtTq0u';
      string baseUrl = 'http://www.google.com/recaptcha/api/verify'; 

      string body ='privatekey='+ secret +  '&remoteip=' + remoteHost() + '&challenge=' + challenge + '&response=' + response + '&error=incorrect-captcha-sol';
      
      HttpRequest req = new HttpRequest();   
      req.setEndpoint( baseUrl );
      req.setMethod('POST');
      req.setBody ( body);
      try 
      {
        Http http = new Http();
        HttpResponse captchaResponse = http.send(req);
        System.debug('response: '+ captchaResponse);
        System.debug('body: '+ captchaResponse.getBody());
        if ( captchaResponse != null ) 
        {  
            correctResponse = ( captchaResponse.getBody().contains('true') );
        }          
       
      } 
      catch( System.Exception e) 
      {
         System.debug('ERROR: '+ e);
      }     
      System.debug('Result returned is :'+correctResponse );                        
      return correctResponse;
    }

    global static string remoteHost() 
    { 
        string ret = '127.0.0.1';
        // also could use x-original-remote-host 
        try
        {
            map<string , string> hdrs = ApexPages.currentPage().getHeaders();
            if ( hdrs.get('x-original-remote-addr') != null)
            {
                ret =  hdrs.get('x-original-remote-addr');
            }
            else if ( hdrs.get('X-Salesforce-SIP') != null)
            {   
                ret =  hdrs.get('X-Salesforce-SIP');
            }
        }
        catch(exception e)
        {
        
        }
        return ret;
    }
}