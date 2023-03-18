public class AccountAccountUtility {
    public static void viewAnnualRevenue(List<String>fields){
       String q = 'SELECT Id';       
        for(String field : fields){
            q += ', '+field;
        }
        q += ' FROM Account';
        
        
        List<Account> accounts = Database.query(q);

        for(Account acc : accounts){
          	for(String field : fields){
            	System.debug(field+': '+acc.get(field));	
        	}
          	System.debug('====================');
        }
    }
}