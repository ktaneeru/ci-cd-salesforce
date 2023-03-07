public class MasterParentTriggerHandler {
    public static void beforeUpdate(List<Master_Parent__c> newMstList) {
        for (Master_Parent__c mst : newMstList) {
            if (String.isBlank(mst.City_Name__c)) {
                mst.City_Name__c.addError('City name cannot be blanks');
            }    
            if (mst.City_Name__c == 'Hyd' || mst.City_Name__c == 'Hyderabad' || mst.City_Name__c.substring(0,3) =='Hyd' ) {
                mst.City_Name__c = 'Hyderabad';
            }
        }
    }
    public static void cityUpdate() {
        for (Master_Parent__c mst1 : [Select Id, Name , City_Name__c from Master_Parent__c]) {
            
        }
    }
}
 