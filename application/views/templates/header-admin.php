<header class="row py-2">
    <div class="col-md-3 col-img-logo">
        <img src="<?= base_url() ?>public/img/logo.png" alt="Logo fundación salvando sueños">
    </div>
    <div class="col-md-9 d-flex justify-content-end align-items-center">
        <div class=" text-center mr-3">
            <b><?= ucwords(strtolower("$rol_tipo_cargo"))?>:</b> <i><?= ucwords(strtolower("$per_nombre_uno $per_apellido_uno"))?></i><br>      
        </div>
        <a href="<?=  base_url() ?>admin/logout" title="Cerrar Sesión" class="btn-logout"><i class="fas fa-sign-out-alt"></i></a>
    </div>
</header>