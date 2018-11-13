<?php
    if($this->session->flashdata('msg')){
        ?>
        <div class="alert alert-<?= $this->session->flashdata('type') ?> alert-dismissible fade show" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <?= $this->session->flashdata('msg') ?>
        </div>
        <?php
    }
?>
<div class="row mb-3">
    <div class="col-md-6">
        <h5><i class="fas fa-file-alt"></i> Noticias: </h5>
    </div>
    <div class="col-md-6 text-right">
        <button type="button" class="btn btn-blue" data-toggle="modal" data-target="#agregar-noticia-modal">
            <i class="fas fa-plus-circle"></i> Agregar
        </button>
    </div>
</div>
<?php
if(count($noticias) > 0){ ?>
    <div class="row">
    <?php foreach ($noticias as $noticia) { ?>
        <div class="col-xs-4 col-md-6 col-lg-4 mb-3">
            <div class="card">
                <img class="card-img-top img-noticia" src="<?= base_url() ?>/public/noticias/<?= $noticia->imagen ?>" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title font-weight-bold"><?= $noticia->titulo ?></h5>
                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">
                    <small class="text-muted">Publicación: <?= $noticia->fecha_publicacion ?></small>
                    <div>
                        <button type="button" class="btn btn-danger btn-eliminar-noticia" data-toggle="modal" data-target="#eliminar-noticia" data-noticia="<?= $noticia->id_noticia ?>"><i class="fas fa-trash"></i></button>
                        <button type="button" class="btn btn-blue btn-ver-editar-noticia" data-toggle="modal" data-target="#ver-editar-noticia" data-noticia="<?= $noticia->id_noticia ?>"><i class="fas fa-edit"></i></button>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>
    </div>
<?php }else{ ?>
    <h4 class="text-center">No existen noticias registradas.</h4>
<?php } ?>

<!-- Modal Agregar Noticia -->
<div class="modal fade" id="agregar-noticia-modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus-circle"></i> Agregar Noticia</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <form class="text-right" action="<?= base_url() ?>noticia/create/" method="POST" enctype="multipart/form-data" id="form-create-noticia">
                <div class="form-group row">
                    <label for="titulo-noticia" class="col-md-4">Titulo:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="titulo-noticia" name="titulo-noticia" maxlength="100" required>
                        <div class="invalid-feedback" id="validacion-titulo-noticia">
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img-noticia" class="col-md-4">Imágen (.png, .jpg, .jpeg)</label>
                    <div class="col-md-8">
                        <input type="file" class="form-control" id="img-noticia" name="img-noticia" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="desc-noticia" class="col-md-4">Descripción: </label>
                    <div class="col-md-8">
                        <textarea rows="10" class="form-control" id="desc-noticia" name="desc-noticia" style="resize: none;" required></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-blue" id="btn-registrar-informe">Registrar</button>
            </form>
        </div>
    </div>
  </div>
</div>

<!-- Modal Eliminar Noticia -->
<div class="modal fade" id="eliminar-noticia" tabindex="-1" role="dialog" aria-labelledby="eliminar-noticia" aria-hidden="true">
  <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Información: </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ¿ Desea eliminar esta noticia ?
      </div>
      <div class="modal-footer">
        <a class="btn btn-danger" id="btn-confirmar-eliminar-noticia" href="<?= base_url() ?>noticia/eliminar/" type="button">Eliminar</a>
      </div>
    </div>
  </div>
</div>

<!-- Modal Ver/Editar Noticia -->
<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="ver-editar-noticia">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
            <div class="card bg-dark text-white">
                <img class="card-img" id="img-ver-noticia" src="<?= base_url() ?>public/noticias/" alt="Imágen de Noticia">
            </div>
        </div>
        <div class="modal-body" id="descripcion-noticia">
            <form class="text-right" action="<?= base_url() ?>noticia/editar/" method="POST" enctype="multipart/form-data" id="form-editar-noticia">
                <input type="hidden" id="id-editar-noticia" name="id-editar-noticia">
                <input type="hidden" id="img-data-noticia" name="img-data-noticia">
                <div class="form-group row">
                    <label for="titulo-noticia" class="col-md-4">Titulo:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="titulo-editar-noticia" name="titulo-editar-noticia" maxlength="100" required>
                        <div class="invalid-feedback" id="validacion-titulo-noticia">
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img-noticia" class="col-md-4">Imágen (.png, .jpg, .jpeg)</label>
                    <div class="col-md-8">
                        <input type="file" class="form-control" id="img-editar-n    oticia" name="img-editar-noticia">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="desc-noticia" class="col-md-4">Descripción: </label>
                    <div class="col-md-8">
                        <textarea rows="10" class="form-control" id="desc-editar-noticia" name="desc-editar-noticia" style="resize: none;" required></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-blue" id="btn-registrar-informe">Editar</button>
            </form>
        </div>
    </div>
  </div>
</div>