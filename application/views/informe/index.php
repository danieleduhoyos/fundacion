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
        <h5><i class="fas fa-file-invoice-dollar"></i> Informes Financieros: </h5>
    </div>
    <div class="col-md-6 text-right">
        <button type="button" class="btn btn-blue" data-toggle="modal" data-target="#agregar-informe-modal">
            <i class="fas fa-plus-circle"></i> Agregar
        </button>
    </div>
</div>
<?php
if(count($informes) > 0){
    ?>
    <table class="table text-center">
    <thead>
        <tr>
        <th>Año</th>
        <th>Documento</th>
        <th></th>
        </tr>
    </thead>
    <tbody>
    <?php
        foreach($informes as $informe){
            ?>
            <tr>
                <td><?= $informe->fecha ?></td>
                <td><a href="<?= base_url() ?>informe/descargar/<?= $informe->informe ?>/" target="_blank"><i class="fas fa-cloud-download-alt"></i> <?= $informe->informe ?></a></td>
                <td><a href="<?= base_url() ?>informe/eliminar/<?= $informe->informe ?>/" class="text-danger"><i class="fas fa-trash-alt"></i> Eliminar</a></td>
            </tr>
            <?php
        }
        ?>
    </tbody>
    </table>
<?php
 }else{
    ?>
    <h4 class="text-center">No existen informes registrados.</h4>
    <?php
}
?>

<!-- Modal Agregar Informe -->
<div class="modal fade" id="agregar-informe-modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus-circle"></i> Agregar informe financiero</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
            <form class="text-right" action="<?= base_url() ?>informe/registrar/" method="POST" enctype="multipart/form-data" id="registrar-informe">
                <div class="form-group row">
                    <label for="fecha_informe" class="col-md-4">Año: </label>
                    <div class="col-md-8">
                        <input type="number" class="form-control" id="fecha_informe" name="fecha" min=2000 max=2100 required>
                        <div class="invalid-feedback" id="validacion-fecha-informe">
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="informe" class="col-md-4">Archivo (.pdf): </label>
                    <div class="col-md-8">
                        <input type="file" class="form-control" id="informe" name="informe" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-blue" id="btn-registrar-informe">Registrar</button>
            </form>
        </div>
    </div>
  </div>
</div>