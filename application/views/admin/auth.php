<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Iniciar Sesión | Fundación Salvando Sueños</title>

    <!-- CSS -->
    <link rel="stylesheet" href="../public/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="../public/css/styles-admin.css">
</head>
<body>
    <div class="container-fluid d-flex justify-content-center align-items-center container-auth">
        <div class="content-auth">
            <img src="<?= base_url() ?>public/img/logo.png" alt="Logo fundación salvando sueños" class="img-fluid pb-3">
            
            <p><b>Bienvenido. </b> Por favor ingrese sus datos.</p>

            <!-- Iniciar sesión -->
            <form action="<?= base_url() ?>admin/login/" method="POST" class="content-login" id="content-login">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    
                    <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario" autocomplete="off" maxlength="15">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-unlock-alt"></i></span>
                    </div>
                    
                    <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña">
                </div>

                <input type="submit" class="btn mb-3" value="INGRESAR">
                
                <div class="d-flex justify-content-between">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="recuerdame" name="recuerdame">
                        <label class="form-check-label" for="recuerdame">Recuerdame</label>
                    </div>
                    <span id="btn-recover" class="span-link">Olvidé mi contraseña</span>
                </div>
            </form>

            <!-- Recupera contraseña -->
            <form action="<?= base_url() ?>admin/restore_password/" method="POST" class="content-recover toggle-content" id="content-recover">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-at"></i></span>
                    </div>
                    
                    <input type="email" class="form-control" id="email" name="email" placeholder="E-mail" maxlength="100">
                </div>

                <input type="submit" class="btn mb-3" value="RECUPERAR">

                <div class="d-flex justify-content-end">
                    <span id="btn-login" class="span-link">Iniciar sesión</span>
                </div>
            </form>

            <?php
                if($this->session->flashdata('msg')){
                    ?>
                    <div class="alert alert-<?= $this->session->flashdata('type') ?> mt-3" role="alert">
                        <strong>Información: </strong> <?= $this->session->flashdata('msg') ?>
                    </div>
                    <?php
                }
            ?>
        </div>

    </div>

    <!-- Scripts -->
    <script src="../public/js/jquery-3.2.1.slim.min.js"></script>
    <script src="../public/js/scripts-admin.js"></script>
</body>
</html>