/*
* This apex class represents a single Error Representation.
*
* @author behram.buhariwala
*/

global class ErrorResponseRepresentation {
    @InvocableVariable
    global String errorCode;

    @InvocableVariable
    global String message;
}
