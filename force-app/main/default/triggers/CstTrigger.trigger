trigger CstTrigger on Cst__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if (trigger.isBefore) {
        if (trigger.isInsert) {
             /*   if (String.isBlank(trigger.new[0].City_Name__c)) {
                trigger.new[0].City_Name__c.addError('City name cannot be blanks');
              } */
            System.debug('Before Insert');    
        }
        
        if (trigger.isUpdate) {
            MasterParentTriggerHandler.beforeUpdate(trigger.new);
        }

        if (trigger.isDelete) {
            System.debug('Before Delete');
        
        }
        
    }
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            System.debug('After Insert');    
        }
        if (trigger.isUpdate) {
            System.debug('After Update');
        }
        if (trigger.isDelete) {
            System.debug('After Delete');
        }
        if (trigger.isUnDelete) {
            System.debug('After UnDelete');
        }
    }

}