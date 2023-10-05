function verificarPasswords() {

    pass1 = document.getElementById('i1');
    pass2 = document.getElementById('i2');
    name = document.getElementById('i3');

    if (pass1.value !== pass2.value) {
        document.getElementById("error").classList.add("mostrar");

        return false;
    } else {
        document.getElementById("error").classList.remove("mostrar");

        document.form.submit();

        return true;
    }
}
function ver(){
    const ver = document.getElementById('i1');
    const ver2 = document.getElementById('i2');
    
    ver.setAttribute('type', 'text');
    ver2.setAttribute('type', 'text');
    
    var button = document.querySelector("#verr");
    button.setAttribute("onclick", "vernt()");
}
function vernt(){
    const ver = document.getElementById('i1');
    const ver2 = document.getElementById('i2');
    
    ver.setAttribute('type', 'password');
    ver2.setAttribute('type', 'password');
    
    var button = document.querySelector("#verr");
    button.setAttribute("onclick", "ver()");
}
