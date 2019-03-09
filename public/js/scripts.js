let src_img_noticias = $("#img-noticia").attr('src');

$(".btn-noticias").click(function(){
    $.ajax({
        url: 'noticia/ver/',
        method: 'GET',
        dataType: 'json',
        data: { id_noticia : $(this).data('noticia') },
        success : function(data){
            $("#img-noticia").attr('src', src_img_noticias + data[0].imagen);
            $("#titulo-noticia").html(data[0].titulo);
            $("#descripcion-noticia").html(data[0].descripcion.replace(/\n/g, '<br>'));
            $("#fecha-publicacion-noticia").html(data[0].fecha_publicacion);
        }
    });
});