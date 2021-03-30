public with sharing class AttachmentUploadController {
 
  public Attachment attachment {
  get {
      if (attachment == null)
        attachment = new Attachment();
      return attachment;
    }
    set; }
 
  public PageReference upload() {
 
    attachment.OwnerId = UserInfo.getUserId();
    Id id = System.currentPageReference().getParameters().get('id');
    attachment.ParentId = id; 
    attachment.IsPrivate = true;
 
    try {
      insert attachment;
    } catch (DMLException e) {
      ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error uploading attachment'));
      return null;
    }
     finally
     {
     attachment =new Attachment();
     }
    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Attachment uploaded successfully'));
    return null;
  }
 
}