function toggle_content(){
    let content_login = document.getElementById("content-login");
    let content_recover = document.getElementById("content-recover");
    
    content_login.classList.toggle("toggle-content");
    content_recover.classList.toggle("toggle-content");
}

function ajax(url = null, method = null, type = null, func = null){
    let xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        let data;
        
        if (this.readyState == 4 && this.status == 200) {
            switch(type){
                case 'JSON' :
                data = JSON.parse(this.responseText);
                break;
                case 'TEXT' : 
                data = this.responseText;
                        break;
                    default:
                    data = this.responseText;
                        break;
                    }
                func(data);
            }
        };
        xhttp.open(method, url, true);
        xhttp.send();
}

function main(){
    // Login 
    let btn_login  = document.getElementById("btn-login");
    let btn_recover = document.getElementById("btn-recover");

    if(btn_login) {
        btn_login.addEventListener("click", toggle_content);
    }
    if(btn_recover){
        btn_recover.addEventListener("click", toggle_content); 
    }

    // Registrar Informe
    let registrar_informe = document.getElementById("registrar-informe");

    if(registrar_informe){
        let fecha_informe = document.getElementById("fecha_informe");
        let validacion_fecha_informe = document.getElementById("validacion-fecha-informe");

        registrar_informe.addEventListener("submit", (e) => {
            fecha_informe.classList.remove('is-invalid');
            e.preventDefault();

            ajax('validar_informe/?fecha_search=' + fecha_informe.value,
                'GET',
                'JSON',
                function(data){
                    if(data.usuario){
                        fecha_informe.classList.add('is-invalid');
                        validacion_fecha_informe.innerText = "Informe ya registrado para este año.";
                    }else{
                        registrar_informe.submit();
                    }
                });
        });
    }
}

window.onload = main;