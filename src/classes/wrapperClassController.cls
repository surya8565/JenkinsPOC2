public class wrapperClassController {

    public List<cContact> contactList {get; set;}
    public List<cContact> freshcontactList {get; set;}
    public List<cContact> SelectedcontactList {get; set;}
    public List<Contact> selectedContacts = new List<Contact>();
   // Integer i=0;

    
    public List<cContact> getContacts() {
        if(contactList == null) {
            contactList = new List<cContact>();
            for(Contact c: [select Id, Name, Email, Phone from Contact limit 10]) {
                
                contactList.add(new cContact(c));
            }
        }
        return contactList;
    }


    public PageReference processSelected() {     
        Integer i=0;
        SelectedcontactList=new List<cContact>();
        freshcontactList=new List<cContact>();        
        for(cContact cCon: getContacts()) {
            if(cCon.selected == true)
            {
                selectedContacts.add(cCon.con);
                SelectedcontactList.add(new cContact(cCon.con));              
            }
            else
            {
            freshcontactList.add(new cContact(cCon.con));
            i++;
            }
        }


        contactList=freshcontactList;
        return null;
    }
    
     public List<cContact> getSelectedContacts() {
        return SelectedcontactList;
    }


        public class cContact {
        public Contact con {get; set;}
        public Boolean selected {get; set;}

      
        public cContact(Contact c) {
            con = c;
            selected = false;
        }
    }
}