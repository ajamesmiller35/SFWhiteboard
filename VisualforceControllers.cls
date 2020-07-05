    // Standard controller for Visualforce:prebuilt SF made apex class 
    //gives Visualforce pages viewing,editing, saving, deleting a record functionality
    //declared by passing the API name of the object to the standardController
    <apex:page standardController ="Account">
    </apex:page>
    //******************************************************************************* */
    //Standard set controllers allow us to deal with groups of records at once
    //available for all custom objects, not every standard object
    //to declare standard set controller, pass API name of object to standardController
    //then pass a name to the recordSetVar attribute
    //records will be paginated, max records shown is 20 per page, can be changed with controller extension
    <apex:page standardController ="Account" recordSetVar="accts">
    </apex:page>
    //******************************************************************************* */
    //To declare extension, pass the name of the apex class to extensions parameter
    //Can use as many extensions as we want in a single page, comma-seperate them
    //The constructor of our controller extension must take one parameter
    ApexPages.StandardController//used if you are extending a standard controller
    ApexPages.StandardSetController//used if you are extending a standard set controller
    //Use an instance of the custom controller is extending custom controller
    //****************************************************************************** */
    //Use a custom controller is you don't want to suse any of the standard functionality
    //To create a custom controller pass the name of the calss to the controller attribute
    //Can declare EITHER one custom controller or one standard controller for a VF page, cant be both
    //If you dont use the standard controller you must declare and instantiate all variables that you wish to reference
    //can instantiate StandardController class and pass it an instance of the object our controller is acting on
    //to build a custom controller that functions as a custom list controller, instantiate a list of records from a SOQL query
    //then either build your own pagination methods or instantiate StandardSetController class
    <apex:page controller="ExampleCustomController">
    </apex:page>


    <apex:page standardController="Contact" extensions="ContactControllerExtension">
    </apex:page>

