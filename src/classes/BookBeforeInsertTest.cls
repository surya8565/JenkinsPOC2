@isTest
public class BookBeforeInsertTest
{
    static testMethod void testBooksTrigger_withValues()
    {
    Book__c book = new Book__c(Name='Twilight', Author__c='Stephenie Meyer' ,Discount__c=3, price__c=200);
    insert book;
    }  
    static testMethod void testBooksTrigger_withOutValues()
    {
    Book__c book=new Book__c(Name='Twilight', Author__c='Stephenie Meyer', Discount__c=50, price__c=200);
    insert book;
    }  
    static testMethod void testUpdateWithValues()
    {
    Book__c book=new Book__c(Name='Twilight', Author__c='Stephenie Meyer', Discount__c=50, price__c=200, Number_of_copies__c=20, Number_of_Fans__c=100);
    insert book;
    book.Number_of_copies__c=40;
    update book;
    }  
    static testMethod void testUpdateWithOutValues()
    {
    Book__c book=new Book__c(Name='Twilight', Author__c='Stephenie Meyer', Discount__c=50, price__c=200, Number_of_copies__c=20, Number_of_Fans__c=100);
    insert book;
    book.Number_of_copies__c=10;
    update book;
    }  
    static testMethod void testUpdateBulk()
    {
   
    Book__c[] books= new Book__c[]{};
    Book__c[] updatedBooks= new Book__c[]{};
    for(Integer x=0; x<200;x++)
    {
            Book__c book=new Book__c(Name='Twilight', Author__c='Stephenie Meyer', Discount__c=50, price__c=200, Number_of_copies__c=20, Number_of_Fans__c=100);
            books.add(book);
    }
        insert books;
        //Now insert data causing an contact trigger to fire. 
        Test.startTest();
        for(Integer x=0; x<200;x++)
        {
        Book__c b=books.get(x);
        if(x<100)
        {       
        b.Number_of_copies__c=50;
        updatedBooks.add(b);
        }
        else
        {
        b.Number_of_copies__c=10;
        updatedBooks.add(b);
        }
        }
        update updatedBooks;
        Test.stopTest();    
    } 
}