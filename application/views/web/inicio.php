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
</div>
<br>

<!--
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
    
</div>-->
<section class="container mb-5">
    <h3 data-toggle="collapse" data-target="#noticias" aria-expanded="false" aria-controls="noticias" class="mb-4">NOTICIAS</h3>
    <div class="row">
        <div class="col-xs-4 col-md-6 col-lg-4">
            <div class="card">
                <img class="card-img-top" src="<?= base_url() ?>/public/noticias/noticia1.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Titulo Noticia</h5>
                    <p class="p-0 m-0">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">
                    <small class="text-muted">Fecha Publicación</small>
                    <button class="btn btn-blue">Ver más</button>
                </div>
            </div>
        </div>
        <div class="col-xs-4 col-md-6 col-lg-4">
            <div class="card">
                <img class="card-img-top" src="<?= base_url() ?>/public/noticias/noticia1.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Titulo Noticia</h5>
                    <p class="p-0 m-0">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">
                    <small class="text-muted">Fecha Publicación</small>
                    <button class="btn btn-blue">Ver más</button>
                </div>
            </div>
        </div>
        <div class="col-xs-4 col-md-6 col-lg-4">
            <div class="card">
                <img class="card-img-top" src="<?= base_url() ?>/public/noticias/noticia1.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Titulo Noticia</h5>
                    <p class="p-0 m-0">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">
                    <small class="text-muted">Fecha Publicación</small>
                    <button class="btn btn-blue">Ver más</button>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
    </div>
</div>
</body>