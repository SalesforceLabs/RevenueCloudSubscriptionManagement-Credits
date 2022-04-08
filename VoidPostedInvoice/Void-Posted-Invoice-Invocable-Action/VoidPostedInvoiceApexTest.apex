@isTest(SeeALLData=true)
global with sharing class VoidPostedInvoiceApexTest {
    global static testmethod void testVoidPostedInvoice() {
        VoidPostedInvoice vpi = new VoidPostedInvoice();
        VoidPostedInvoiceInvocableActionInput input = new VoidPostedInvoiceInvocableActionInput();
        VoidPostedInvoiceInvocableActionOutput output = new VoidPostedInvoiceInvocableActionOutput();
    }
}
