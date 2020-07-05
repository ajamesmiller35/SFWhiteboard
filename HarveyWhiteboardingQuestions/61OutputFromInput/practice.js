let req = new XMLHttpRequest();

req.onreadystatechange(function(response){
    if(this.readystate == 4 && this.status == 200){
        //Handle successful response
    }
    else{
        //Handle unsuccessful response
    }
});

req.open('GET/POST/PUT/DELETE', 'URL', true);
req.send();