/*
* This apex class represents invocable action for the Void a Posted Invoice.
* The void a posted invoice is exposed in Apex and this is a simple code snippet representing the invocable action.
*
* @author behram.buhariwala
*/

global with sharing class VoidPostedInvoice {

    @InvocableMethod(label = 'Void Posted Invoice API' description='')
    global static List<VoidPostedInvoiceInvocableActionOutput> voidAPostedInvoice(List<VoidPostedInvoiceInvocableActionInput> voidInvoiceInput) {
        ConnectApi.RevenueAsyncRepresentation response = ConnectApi.Billing.voidPostedInvoice(new ConnectApi.VoidPostedInvoiceInputRequest(), voidInvoiceInput.get(0).invoiceId);
        return convertResponse(response);
    }

    public static List<VoidPostedInvoiceInvocableActionOutput> convertResponse(ConnectApi.RevenueAsyncRepresentation response) {
        List<VoidPostedInvoiceInvocableActionOutput> outputList = new List<VoidPostedInvoiceInvocableActionOutput>();
        VoidPostedInvoiceInvocableActionOutput output = new VoidPostedInvoiceInvocableActionOutput();
        outputList.add(output);
        output.success = response.success;
        output.requestIdentifier = response.requestIdentifier;
        if (response.errors != null) {
            ErrorResponseRepresentationList errorList = new ErrorResponseRepresentationList();
            for(ConnectApi.ErrorResponse errorResponse : response.errors) {
                ErrorResponseRepresentation error = new ErrorResponseRepresentation();
                error.errorCode = errorResponse.errorCode;
                error.message = errorResponse.message;
                errorList.errors.add(error);
            }
            output.errors = errorList;
        }
        return outputList;
    }

}
