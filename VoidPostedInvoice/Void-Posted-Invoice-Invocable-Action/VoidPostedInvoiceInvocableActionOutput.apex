/*
* This apex class represents Output Representation of the Void a Posted Invoice Invocable action we have defined.
* The Void a posted invoice is an Async API. If the request is successfully enqueued, a requestIdentifier is
* received. In case the given invoice does not pass the required validations, the ErrorResponseRepresentationList
* is populated with the errors.
* @author behram.buhariwala
*/

global class VoidPostedInvoiceInvocableActionOutput {

    @InvocableVariable
    global Boolean success;

    @InvocableVariable
    global String requestIdentifier;

    @InvocableVariable
    global ErrorResponseRepresentationList errors;
}
