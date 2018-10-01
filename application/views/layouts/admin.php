<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fundación Salvando Sueños</title>

    <!-- CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="../public/css/bootstrap.min.css">
    <link rel="stylesheet" href="../public/css/styles-admin.css">
</head>
<body>
    <div class="container-fluid container-admin">
        <!-- Header -->
        <?php  include_once APPPATH. 'views/templates/header-admin.php'; ?>

        <div class="row">
            <div class="col-md-3 p-0">
                <!-- Nav -->
                <?php  include_once APPPATH. 'views/templates/nav-admin.php'; ?>
            </div>

            <div class="col-md-9 p-0 main-background">
                <!-- Main -->
                <main class="p-3">
                    <?= $content_for_layout; ?>
                </main>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="../public/js/jquery-3.2.1.slim.min.js"></script>
    <script src="../public/js/popper.min.js"></script>
    <script src="../public/js/bootstrap.min.js"></script>
    <script src="../public/js/scripts-admin.js"></script>
</body>
</html>