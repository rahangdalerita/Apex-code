import { LightningElement, wire, track } from 'lwc';
import GetAccounts from '@salesforce/apex/AccountLwcController.getAccounts';
export default class AccountLwcComponent extends LightningElement {

    @track lstAccounts = [];

    selectedRecord;

    @track accColumns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'AccountNumber', fieldName: 'AccountNumber' },
        { label: 'Phone', fieldName: 'Phone'},
       
    ]


    @wire(GetAccounts)
    WireOpportunities(result) {
        if(result.data) {
            this.lstAccounts = result.data;
        }
        if(result.error) {
            console.log(result.error);
        }
    }

    handleRowActions(event) {
        this.selectedRecord = event.detail.row;
    
        console.log( JSON.stringify(this.selectedRecord) )

        
    }
}