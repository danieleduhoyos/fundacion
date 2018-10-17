<div class="row">
    <!-- Datos de Persona -->
    <div class="col-md-6">
        <section class="section-data p-3">
            <h5><i class="fas fa-user"></i> Datos Personales: </h5>
            <hr>
            <form action="" class="text-right">
                <div class="form-group row">
                    <label for="per_tipo_documento" class="col-md-4 col-form-label">Tipo de Documento: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="per_tipo_documento" value="<?= $this->session->per_tipo_documento ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="staticEmail" class="col-md-4 col-form-label">No. Documento: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="per_documento" value="<?= $this->session->per_documento ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="per_nombre_uno" class="col-md-4 col-form-label">Primer Nombre: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="per_nombre_uno" value="<?= $this->session->per_nombre_uno ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="per_nombre_dos" class="col-md-4 col-form-label">Segundo Nombre: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="per_nombre_dos" value="<?= $this->session->per_nombre_dos ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="per_apellido_uno" class="col-md-4 col-form-label">Primer Apellido: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="per_apellido_uno" value="<?= $this->session->per_apellido_uno ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="per_apellido_dos" class="col-md-4 col-form-label">Segundo Apellido: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="per_apellido_dos" value="<?= $this->session->per_apellido_dos ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="per_fecha_nacimiento" class="col-md-4 col-form-label">Fecha Nacimiento: </label>
                    <div class="col-md-8">
                        <input type="date" class="form-control" id="per_fecha_nacimiento" value="<?= $this->session->per_fecha_nacimiento ?>" readonly>
                    </div>
                </div>
                <button type="submit" class="btn btn-blue">Editar</button>
            </form>
        </section>
    </div>

    <!-- Datos de Usuario -->
    <div class="col-md-6">
        <section class="section-data p-3">
            <h5><i class="fas fa-user-circle"></i> Datos de Usuario: </h5>
            <hr>
            <form action="" class="text-right">
                <div class="form-group row">
                    <label for="usu_usuario" class="col-md-4 col-form-label">Usuario: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="usu_usuario" value="<?= $this->session->usu_usuario ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="usu_correo" class="col-md-4 col-form-label">E-mail: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="usu_correo" value="<?= $this->session->usu_correo ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="rol_tipo_cargo" class="col-md-4 col-form-label">Tipo: </label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="rol_tipo_cargo" value="<?= ucwords($this->session->rol_tipo_cargo) ?>" readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="per_fecha_registro" class="col-md-4 col-form-label">Fecha Registro: </label>
                    <div class="col-md-8">
                        <input type="date" class="form-control" id="per_fecha_registro" value="<?= $this->session->per_fecha_registro ?>" readonly>
                    </div>
                </div>
                <button type="submit" class="btn btn-blue">Editar</button>
            </form>
        </section>
    </div>
</div>
