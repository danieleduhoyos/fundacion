<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fundación Salvando Sueños</title>
</head>
<body>
    <!-- Header -->
    <?php  include_once APPPATH. 'views/templates/header.php'; ?>
    
    <?= $content_for_layout; ?>

    <!-- Footer -->
    <?php  include_once APPPATH. 'views/templates/footer.php'; ?>
</body>
</html>