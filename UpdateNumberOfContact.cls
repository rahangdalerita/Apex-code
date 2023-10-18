public class UpdateNumberOfContact {
    
    Public static void updateContacts(List<Contact> conlist){
        
        // Create a set to store Account IDs that need to be updated
        Set<Id> accountIds = new Set<Id>();
        
        // Iterate through the Contacts and collect the related Account IDs
        for (Contact contact : conlist) {
            accountIds.add(contact.AccountId);
        }
        
        // Iterate through the deleted Contacts and collect the related Account IDs
        for (Contact contact : conlist) {
            accountIds.add(contact.AccountId);
        }
        
        
        // Update the Number of Contacts field on related Accounts
        List<Account> accountsToUpdate = new List<Account>();
        for (Id accountId : accountIds) {
            Account acc = new Account(Id = accountId);
            acc.Number_of_Contacts__c = [SELECT Count() FROM Contact WHERE AccountId = :accountId];
            accountsToUpdate.add(acc);
        }
        
        // Update the Accounts
        update accountsToUpdate;
    }
    
}