<body><br>
    <h3>INFORME FINANCIERO ANUAL</h3><br>
    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Año</th>
      <th scope="col">Archivo</th>
      <th scope="col">Acción</th>
    </tr>
  </thead>
  <?php foreach($informe as $inf) { ?>
  <tbody>
    <tr>
      <td><?php echo $inf->fecha;?></td>
      <td><img style="width: 50px; height: 30px;" src="<?= base_url().'public/img/pdf.png'?>" alt="Informe Fundacion Salvando Sueños"><?php echo $inf->informe;?></td>
      <td><a href="#"><i id="color" class="fas fa-cloud-download-alt"></i> Descargar</a></td>
    </tr>
  </tbody>
  <?php }?>
</table>
</body>
