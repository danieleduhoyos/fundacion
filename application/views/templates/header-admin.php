<header class="row py-2">
    <div class="col-md-2 col-img-logo">
        <img src="<?= base_url() ?>public/img/logo.png" alt="Logo fundación salvando sueños">
    </div>
    <div class="col-md-10 d-flex justify-content-end align-items-center">
        <div class=" text-center mr-3">
            <strong><?= ucwords($this->session->rol_tipo_cargo) ?>:</strong> <?= strtoupper($this->session->per_nombre_uno .' '. $this->session->per_apellido_uno) ?>
        </div>
        <a href="<?=  base_url() ?>admin/logout" title="Cerrar Sesión" class="btn-logout"><i class="fas fa-sign-out-alt"></i></a>
    </div>
</header>