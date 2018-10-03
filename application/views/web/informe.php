<body><br>
    <h3>INFORME FINANCIERO ANUAL</h3><br>
    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Año</th>
      <th scope="col">Archivo</th>
      <th scope="col">Acción</th>
    </tr>
  </thead>
  <?php foreach($informe as $inf) { ?>
  <tbody>
    <tr>
      <th scope="row"><?php echo $inf->id_informe;?></th>
      <td><?php echo $inf->fecha;?></td>
      <td><?php echo $inf->informe;?></td>
      <td><a href="#"><i id="color" class="fas fa-cloud-download-alt"></i> Descargar</a></td>
    </tr>
  </tbody>
  <?php }?>
</table>
</body>