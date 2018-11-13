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
<?php if(count($noticias) > 0){ ?>
    <section class="container mb-5">
        <h3 data-toggle="collapse" data-target="#noticias" aria-expanded="false" aria-controls="noticias" class="mb-4">NOTICIAS</h3>
        <div class="row">
            <?php foreach ($noticias as $noticia) { ?>
                <div class="col-xs-4 col-md-6 col-lg-4 mb-3">
                    <div class="card">
                        <img class="card-img-top img-noticia" src="<?= base_url() ?>/public/noticias/<?= $noticia->imagen ?>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title font-weight-bold"><?= $noticia->titulo ?></h5>
                        </div>
                        <div class="card-footer d-flex justify-content-between align-items-center">
                            <small class="text-muted">Publicacion: <?= $noticia->fecha_publicacion ?></small>
                            <button type="button" class="btn btn-blue btn-noticias" data-toggle="modal" data-target="#ver-noticia" data-noticia="<?= $noticia->id_noticia ?>">Ver más</button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </section>
<?php }  ?>
</body>


<!--Modal Ver Noticia -->
<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="ver-noticia">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <div class="card bg-dark text-white">
                <img class="card-img" id="img-noticia" src="<?= base_url() ?>public/noticias/" alt="Imágen de Noticia">
                <div class="card-img-overlay p-0 d-flex">
                    <h5 class="card-title align-self-end" id="titulo-noticia"></h5>
                </div>
            </div>
        </div>
        <div class="modal-body" id="descripcion-noticia">
        </div>
        <div class="modal-footer">
            Publicación: <i class="ml-1" id="fecha-publicacion-noticia"></i>
        </div>
    </div>
  </div>
</div>