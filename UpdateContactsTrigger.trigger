trigger UpdateContactsTrigger on Contact (after insert, after update, after delete) {
    if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate)){
        UpdateNumberOfContact.updateContacts(Trigger.new); 
    }
    if(trigger.isAfter && trigger.isDelete){
        UpdateNumberOfContact.updateContacts(Trigger.old); 
    }
}