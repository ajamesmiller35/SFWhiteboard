// Apex testing
//test classes are delcared with the @isTest annotation
//test classes can be public or private
//test methods are within test classes and have @isTest annotation
//test methods must be static void and take no arguments
//within test methods, you can call Test.startTest() and Test.stopTest()
//any code within this block will have its own set of governor limits
@isTest
public class myTestClass{
    @isTest static void myTestMethod(){

        System.assertEquals();//takes 2 arguments, expected value and actual value
        System.asserNotEquals();//takes 2 arguments, an unwanted value and the actual
        System.assert();//takes one argument, a boolean value

    }
}

//Test Utility Classes are public classes WITH the @isTest annotation
//contains public static void methods WITHOUT the @isTest annotation
//We use these methods to create test data with DML operations
//use Test Utility classes if you need data with conflicting values or if you want to reuse test data across multiple test classes

//Test Setup Methods are in test classes and have the @testSetup annotation
//These methods are used to create test data for our test methods using DML operations
//can only have one test setup method per class
//The system will run the test setup method before every test method to ensure a fresh set of data

System.runAS(user){} // used to run the code as a specific user

//testing best practices
//1. Test for positive cases
//2. Test for negative cases
//3. Test for single cases
//4. Test for bulk cases
//5. Test for specific users if appropriate
