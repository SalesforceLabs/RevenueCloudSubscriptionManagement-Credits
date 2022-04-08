/*
* This apex class represents Input Representation to the Void a Posted Invoice Invocable action we have defined.
* The Void a posted invoice is an Async API and requires only the ID of invoice that needs to be voided.
*
* @author behram.buhariwala
*/

global class VoidPostedInvoiceInvocableActionInput {
    @InvocableVariable
    global ID invoiceId;
}
