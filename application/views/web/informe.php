<body><br>
    <h3>INFORME FINANCIERO ANUAL</h3><br>
  <?php
if(count($informes) > 0){
    ?>
    <table class="table text-center">
    <thead>
        <tr>
          <th>Año</th>
          <th>Documento</th>
        </tr>
    </thead>
    <tbody>
    <?php
        foreach($informes as $informe){
            ?>
            <tr>
                <td><?= $informe->fecha ?></td>
                <td><a href="<?= base_url() ?>informe/descargar/<?= $informe->informe ?>/"><i class="fas fa-cloud-download-alt"></i> <?= $informe->informe ?></a></td>
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
</body>
