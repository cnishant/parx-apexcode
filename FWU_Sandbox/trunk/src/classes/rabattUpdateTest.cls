@isTest
private class rabattUpdateTest {
    
    //public map<Id, Medienart__c> mmap = new map<Id, Medienart__c>();
    
    static testMethod void myUnitTest() {
    
        Account acc = createAccount();
        insert acc;
        
        Opportunity opp = createOpportunity(acc);
        insert opp;
        
        System.debug( 'opp.Account.Name = ' + opp.Account.Name );
        //createOppLineItem(opp);
        
    }


    public static Opportunity createOpportunity(Account acc) {
    
    	// FRAGE / PROBLEM ??? Wieso funktioniert das hier nicht; Kopie aus testData! ???
    	//Id pricebook2id = [SELECT Id FROM Pricebook2 WHERE IsActive=true AND name='Standard Price Book' limit 1].Id;
    	Id pricebook2id;
    	list<Pricebook2> listPricebook2 = new list<Pricebook2>([SELECT Id, name FROM Pricebook2 WHERE IsActive=true]);
    	if( ! listPricebook2.isEmpty() ) {
    		pricebook2id = listPricebook2[0].Id;
    		// scheint kein Treffer zu kommen
    		system.debug('listPricebook2 Name = ' + listPricebook2[0].name);
    	}
    	
        Opportunity opp = new Opportunity();
        opp.Account = acc;
        opp.Name = 'TestRabatte';
        opp.StageName = 'In Erstellung';
        opp.CloseDate = System.today() + 10;
        //opp.Pricebook2Id = pricebook2id;
        opp.Lizenznummer__c = '10001';
        
        return opp;
    }
    
    public static OpportunityLineItem createOppLineItem( Opportunity opp ) {
    
    // TODO
    //ArtikelLizenz__c al=new ArtikelLizenz__c(Artikel__c=p.id,VPR015__c=1,LZN015__c='10001', SPK015__c=false,MNG015__c=1);
    
        OpportunityLineItem oli = new OpportunityLineItem();
        oli.OpportunityId = opp.id;
                                         //PricebookEntryId = pbetoal.get(alid), 
        oli.SCHL2D__c = '10001';
        oli.Quantity = 1;
        oli.UnitPrice = 5;
        
        return oli;
    }
    
    
    public static Product2 createProduct( Integer randomNumber ) {
    
    // TODO
    
        createMedienart();
        Id rtypeid=[SELECT Id FROM RecordType WHERE Name='Signatur'].Id;
        
        Product2 product = new Product2();

    /*
        product.Name = 'Signatur' + randomNumber ;
        product.ProductCode = 'PC';
        product.PDKZ01__c=System.Math.Floor(1+ randomNumber*1.5)<8?System.Math.Floor(1+ randomNumber*1.5):8;
        product.RecordTypeId = rtypeid;
        product.MEDA01__c = mmap.values().get(1).id;
        product.PDKZ01__c=4;
        product.RECH01__c='A';
        product.VRKZ01__c='+';
        product.TXT013__c='Testtext';
        product.IsActive=true;
        product.GESB01__c=200;
        product.LAOR01__c='00';
    */        
        return product;
    }
    
    public static void createMedienart() {
    
      list<Medienart__c> mlist = new list<Medienart__c>();
      Medienart__c m1 = new Medienart__c(Name='88',MALTXT__c='VHS');
      mlist.add(m1);
      Medienart__c m2 = new Medienart__c(Name='99',MALTXT__c='DVD');
      mlist.add(m2);
      
      // TODO
      /*
      if (!mlist.isEmpty()) insert mlist;
      for (Medienart__c m:mlist) {
        mmap.put(m.id, m);
      }
        */
    }
    
    public static Account createAccount() {
           Account acc = new Account(	name = 'Test 01', 
           								BillingCity = 'city', 
           								BillingStreet = 'Street', 
           								BillingPostalCode = '12345', 
           								BillingCountry = 'DE', 
           								CODE02__c = '01');
                           
          //insert acc;
          return acc;
    }
}