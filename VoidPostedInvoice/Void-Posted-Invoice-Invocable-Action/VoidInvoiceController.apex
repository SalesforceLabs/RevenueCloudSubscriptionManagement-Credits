/*
* This Apex class works as a controller for our VoidInvoiceControllerVF visualforce page
* which we have used to get the invoice ID to pass a parameter to the screen flow being called
* in the visualforce page.
*
* @author behram.buhariwala
*/
public class VoidInvoiceController {

    private final Invoice invoice;

    public VoidInvoiceController(ApexPages.StandardController controller) {
        this.invoice = (Invoice)controller.getRecord();
    }

    public VoidInvoiceController() {

    }

    public Invoice getInvoice() {
        return Invoice;
    }

    public String getInvoiceId() {
        return Invoice.id;
    }


    public PageReference getPage() {
        return new PageReference('/' + invoice.id);
    }

    public PageReference save() {
        return new PageReference('/' + invoice.id);
    }
}
