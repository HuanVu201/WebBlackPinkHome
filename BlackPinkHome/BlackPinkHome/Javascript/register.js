function checkRegister() {
    var firstName = document.getElementById("firstName").value.trim();
    var lastName = document.getElementById("lastName").value.trim();
    var phone = document.getElementById("phone").value.trim();
    var email = document.getElementById("email").value.trim();
    var password = document.getElementById("pass").value.trim();
    var cfPassword =  document.getElementById("cfPass").value.trim();
    var check = true;

    if (firstName == "") {
        alert("Fill first name!");
        check = false;
        document.getElementById("firstName").focus();
    }
    else {
        if (lastName == "") {
            alert("Fill last name!");
            document.getElementById("lastName").focus();
            check = false;
        }
        else {
            if (phone == "") {
                alert("Fill phone number!");
                document.getElementById("phone").focus();
                check = false;
            }
            else {
                if (phone.length != 10) {
                    alert("Wrong phone number!");
                    document.getElementById("phone") = "";
                    document.getElementById("phone").focus();
                    check = false;
                }
                else {
                    if (email == "") {
                        alert("Fill email address!");
                        document.getElementById("email").focus();
                        check = false;
                    }
                    else {
                        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) == false) {
                            alert("Wrong email! Fill email again!");
                            document.getElementById("email").focus();
                            check = false;
                        }
                        else {
                            if (password == "") {
                                alert("Fill password!");
                                document.getElementById("pass").focus();
                                check = false;
                            }
                            else {
                                if (password.length < 6) {
                                    alert("Length of password must be from 6!")
                                    document.getElementById("pass") = "";
                                    document.getElementById("pass").focus();
                                    check = false;
                                }
                                else {
                                    if (cfPassword == "") {
                                        alert("Confirm password!")
                                        check = false;
                                        document.getElementById("cfPass").focus();
                                    }
                                    else {
                                        if (cfPassword != password) {
                                            alert("Password doesn't match!")
                                            document.getElementById("cfPass").focus();
                                            check = false;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                
            }
        }
    }


    return check;
}