//Exception Statements
//A throw statement allows you to signal that an error has occured
throw exceptionObject;
//Use try catch finally blocks to recover from a thrown exception
try {
    //try block
} catch (exceptionType variableName){
    //initial catch block
} catch (Exception e){
    //optional additional catch block
    //the general exception type, 'Exception', if used must be in the last catch block
} finally{
    //finally block
}

// must have at least try and catch or try and finally 

//Custom Exceptions 
//create a new Apex class that extends the Exception class and ends in Exception
//Throw custom exceptions by instantiating the class with the throw keyword
throw new MyException()