public class BeforeInsertRelation
{
public List<Id> depid1=new List<Id>();
public List<Id> stuid1=new List<Id>();

public static String compareNewWithOld(Relatestudanddep__c newrel,List<Relatestudanddep__c> oldrel)
{

List<Relatestudanddep__c> oldrel1= Database.query('SELECT id,Departmnt__c ,Student__c FROM Relatestudanddep__c');
if(oldrel1!=null)
{
    for(Relatestudanddep__c old : oldrel1)
    {
    if(old.Departmnt__c==newrel.Departmnt__c && old.Student__c==newrel.Student__c)
    {
    return 'found';
    }
    }
    return 'not found';
}
else
{
return 'not found';
}
return null;
}

}