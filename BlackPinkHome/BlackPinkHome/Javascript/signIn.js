function checkSignIn() {
    var phone = document.getElementById("inputPhone").value.trim();
    var pass = document.getElementById("inputPass").value.trim();
    var error = document.getElementById("error");
    var check = true;

    if (phone == "") {
        error.innerHTML = "Fill your phone number!"
        phone.focus();
        check = false;
    } 
    if (pass == "") {
        error.innerHTML = "Fill your password!"
        pass.focus();
        check = false;
    }    
    return check;
}