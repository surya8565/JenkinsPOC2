public class wrapperClassController_Accounts
{     
    public User User1 {get;set;}
    Public List<aAccount> wrap_account {get;set;}
    public List<aAccount> SelectedaccountList {get; set;}
    public ID selectedFiled {get;set;}
    
    public wrapperClassController_Accounts()
    {
     User1= new User();
    }
    public String getUser() {
        return null;
    }
    public List<aAccount> getAccounts() {        
        if(wrap_account==null)
        {
            wrap_account=new List<aAccount>();
            for(Account a : [select id,Owner.Name,Name,Phone from Account limit 10])
            {
                wrap_account.add(new aAccount(a));
            }
           
        }
        return wrap_account;
    }


    public PageReference Change_Owner() 
    {
        SelectedaccountList= new List<aAccount>();
        for(aAccount aAcc: getAccounts()) 
         {
            if(aAcc.selected == true)
            {
                //selectedContacts.add(cCon.con);
                //SelectedaccountList.add(new aAccount (aAcc.acc ));
                Account a=aAcc.acc;
                //system.debug('Original Owner'+ a.owner.id);
                a.OwnerId=selectedFiled;
                //system.debug('Values Assigned'+a.OwnerId);
                update a;  
                Account a1=[select id,Owner.Name,Name,Phone from Account where id=:a.id];
                //system.debug('Updated'+a1.owner.name);           
            }
        }
        system.debug('value is'+selectedFiled);
        wrap_account=null;
        return null;
    }
    
    public class aAccount
    {
    public Account acc {get;set;}
    public Boolean selected{get;set;}
        public aAccount(Account a)
        {
        acc=a;
        selected=false;
        }
    
    
    }
    
   public List<SelectOption> getUserss() 
   {    
        List<SelectOption> pickListVals = new List<SelectOption>();
        for (User users : [SELECT Id, Name FROM User WHERE Profile.Name = 'System Administrator' and isactive=true])
        {
            pickListVals.add(new selectOption(users.Id, users.Name));
        }
        return pickListVals;
   }
    

     

}