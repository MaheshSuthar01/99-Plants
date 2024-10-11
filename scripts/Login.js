let eye = document.getElementById("eye");
let password = document.getElementById("password");

eye.onclick = function () {
    if (password.type == "password") {
        password.type = "text";
        this.classList.add("fa-eye");
        this.classList.remove("fa-eye-slash");

    } else {
        password.type = "password";
        this.classList.remove("fa-eye");
        this.classList.add("fa-eye-slash");
    }

}