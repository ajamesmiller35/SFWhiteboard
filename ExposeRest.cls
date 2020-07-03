//Exposing Apex as REST webservice
    //Must annotate a global class with @RestResource annotation
    //set urlMapping parameter within parentheses
    //You expose methods by declaring them global and static and annotating with appropriate HTTP method anotation
    //eg @HttpGet, @HttpPost, @HttpPUt, etc
    //each annotation can be used no more than once within the class
    @RestResource(urlMapping='/Account/*')
    global with sharing class MyRestResource{
        @HttpGet
        global static Account getRecord(){
            //your code here
        }
    }