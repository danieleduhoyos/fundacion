<?php include_once('application/views/templates/header.php') ?>
<?php include_once('application/views/templates/nav.php') ?>
<link rel="stylesheet" href="public/css/bootstrap.min.css">
<body>
<script>
var cont=0
function cambia() {
    cont++;
    switch(cont%4+1)
    {
        case 1:
        document.getElementById("fotocambia").src="http://4.bp.blogspot.com/-0uVYopBOBec/WMf1CmL85WI/AAAAAAAAE0U/jt1rxp2Qc4YjeLuRqThGBx0yQcRuGXjSwCK4B/s000/amor-te-extrano-8.jpg";
        break;
        case 2:
        document.getElementById("fotocambia").src="http://4.bp.blogspot.com/-0uVYopBOBec/WMf1CmL85WI/AAAAAAAAE0U/jt1rxp2Qc4YjeLuRqThGBx0yQcRuGXjSwCK4B/s000/amor-te-extrano-8.jpg";
        break;
        case 3:
        document.getElementById("fotocambia").src="http://gentepasionyfutbol.com.co/home/wp-content/uploads/2018/07/matchball.jpg";
        break;
        case 4:
        document.getElementById("fotocambia").src="http://e00-marca.uecdn.es/assets/multimedia/imagenes/2017/03/30/14909111932092.jpg";
        break;
    }
    
}
function inicio() {
    setInterval(cambia, 3000);
    
}
window.onload=inicio;

</script>
<img id="fotocambia" src="http://e00-marca.uecdn.es/assets/multimedia/imagenes/2017/03/30/14909111932092.jpg" style="width: 100%;">
</body>
