public class AccountLwcController {
@AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        List<Account> lstAccounts = [SELECT Id, Name, AccountNumber,Phone FROM Account LIMIT 10];
        return lstAccounts;
    }
}