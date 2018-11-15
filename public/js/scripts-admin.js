let btn_eliminar_noticia            = document.getElementsByClassName('btn-eliminar-noticia');
let btn_confirmar_eliminar_noticia  = document.getElementById('btn-confirmar-eliminar-noticia');
let href_eliminar_noticia           = btn_confirmar_eliminar_noticia.getAttribute('href');
let btn_ver_editar_noticia          = document.getElementsByClassName('btn-ver-editar-noticia');
let img_noticia                     = document.getElementById('img-ver-noticia'); 
let src_img_noticia                 = img_noticia.getAttribute('src'); 

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
            ime.preventDefault();

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

    // Eliminar Noticia
    for (let i = 0; i < btn_eliminar_noticia.length; i++) {
        btn_eliminar_noticia[i].addEventListener('click', function(){
            btn_confirmar_eliminar_noticia.setAttribute('href', href_eliminar_noticia + this.getAttribute('data-noticia'));
        });
    }

    // Ver editar noticia
    for (let i = 0; i < btn_ver_editar_noticia.length; i++) {
        btn_ver_editar_noticia[i].addEventListener('click', function(){
            ajax('ver/?id_noticia=' + this.getAttribute('data-noticia'),
                'GET',
                'JSON',
                function (data){
                    img_noticia.setAttribute('src', src_img_noticia + data[0].imagen);

                    let id_editar_noticia       = document.getElementById('id-editar-noticia');
                    let titulo_editar_noticia   = document.getElementById('titulo-editar-noticia');
                    let desc_editar_noticia     = document.getElementById('desc-editar-noticia');

                    id_editar_noticia.value     = data[0].id_noticia;
                    titulo_editar_noticia.value = data[0].titulo;
                    desc_editar_noticia.value   = data[0].descripcion;

                    console.log(data);
                }
            );
        });
    }
}


window.onload = main;