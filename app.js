//function myFunction(){
    
// alert("yaay")

//}

// let button=document.getElementById("button")

// button.addEventListener("click",myFunction)



let formButtonStatus = false;

let formButton = function () {
    let getForm = document.querySelector(".fill");
    let getFormStudent = document.querySelector(".student");
    let getFormParent = document.querySelector(".parent");
    let getformFill = document.querySelectorAll(".fill");

    
    
    if (formButtonStatus === false) {
        getForm.style.visibility = "visible";
        

        let arrayLength = getFormFill.length;
        for (let  i = 0;  i < arrayLength;  i++) {
         getFormFill[i].style.opacity = "1";
            
        }

      formButtonStatus = true;
    
    }


    else if (formButtonStatus=== true){
        getformFill.style.width = "50px";
        getformFill.style.opacity = "0";

        let arrayLength = getformFill.length;
        for (let  i = 0;  i < arrayLength;  i++) {
      getformFill[i].style.opacity = "0";
            
        }

     getformFill.style.visibility = "hidden";

        formButtonStatus = false;
    
    }
}