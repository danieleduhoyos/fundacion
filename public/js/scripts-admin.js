let btn_login       = document.getElementById("btn-login");
let btn_recover     = document.getElementById("btn-recover");
let content_login   = document.getElementById("content-login");
let content_recover = document.getElementById("content-recover");

btn_login.addEventListener("click", toggle_content);
btn_recover.addEventListener("click", toggle_content);

function toggle_content(){
    content_login.classList.toggle("toggle-content");
    content_recover.classList.toggle("toggle-content");
}
