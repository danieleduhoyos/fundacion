<body>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img id="hol" class="d-block w-100" src="http://static.hsbnoticias.com/sites/default/files/styles/original/public/gallery/2015/08/foto-nota-1rrrrrrrrrrrr.jpg?itok=bYAbmB1T" style="width: 100%; height: 500px;" >
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="http://e00-marca.uecdn.es/assets/multimedia/imagenes/2017/03/30/14909111932092.jpg" style="width: 100%; height: 500px;">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><br>
<div id="accordion">
    <h3 data-toggle="collapse" data-target="#noticias" aria-expanded="false" aria-controls="noticias">NOTICIAS</h3>
    <div id="noticias" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
        <div class="card-body">
            <?php foreach($noticia as $person){?>
            <h4><?php echo $person->titulo;?></h4>
            <p><?php echo $person->descripcion;?></p>
            <?php 
            }?>
        </div>
    </div>
</div>
</body>