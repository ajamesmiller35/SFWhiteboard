 //Steps to build AJAX request
    //1. instantiate XMLHttpRequest object
    //2. Set onreadystatechange function
    //3. open request
    //4. Send Request

    var xhr = new XMLHttpRequest(); //step 1
    xhr.onreadystatechange = function(){
        if(this.readyState ==4 && this.status ==200){
                    //ready state 4 means request completed and returned
        };//step 2
        xhr.open("GET","url",true);//step 3
        xhr.send();//step 4
    }
    //onreadstatechange function is called every time readyState property of the XMLHttpRequest object changes
    //Open method takes 3 parameters
        //1.Http method(GET)
        //2.URL to send request to
        //3.wheter the request is Asynchronous or not
    //send sends duhhh
    //once request returns onreadystatechange is called for the final time

