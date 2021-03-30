public class BookBeforeInsertHandler
{

public void findTotalCost(List<Book__c> books)
{
for(Book__c b : books)
{
    if(b.Discount__c<30)
    {
       b.Total_Cost__c = (b.price__c*b.Number_of_copies__c); 
    }
    else
    {
       b.Total_Cost__c = (b.price__c*b.Number_of_copies__c)*(b.Discount__c/100); 
    }
}
}

/*public void updateFans(Book__c newBooks,Book__c oldBooks)
{

    
    if(newBooks.Number_of_copies__c>oldBooks.Number_of_copies__c)
    {
       newBooks.Number_of_Fans__c=oldBooks.Number_of_Fans__c+(newBooks.Number_of_copies__c-oldBooks.Number_of_copies__c);
    }
    else
    {
       newBooks.Number_of_Fans__c=oldBooks.Number_of_Fans__c;
    }
}
*/
}