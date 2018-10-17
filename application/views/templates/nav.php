<nav id="nav" style="background-color: #76bddb!important; " class="navbar navbar-toggler navbar-expand-lg navbar-light bg-light">
<img src="<?= base_url().'public/img/logo.png'?>" style="width: 230px; height: 70px;">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item" >
        <a title="Inicio" href="<?= base_url().'Web'?>">
          <i class="fas fa-home" style="color: #ffd600; font-size: 40px !important;"></i>
        </a>
      </li>
      <li class="nav-item" >
        <a class="nav-link" href="<?= base_url().'web/quienes_somos'?>" style="color: black;"><b>Quienes Somos</b></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" style="color: black;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <b>Plan de Atención</b>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="color: black;">
          <a class="dropdown-item" href="<?= base_url().'web/administrativa'?>"><b>Administrativa</b></a>
          <a class="dropdown-item" href="<?= base_url().'web/ingreso'?>"><b>Ingreso</b></a>
          <a class="dropdown-item" href="<?= base_url().'web/pedagogia'?>"><b>Pedagogía</b></a>
          <a class="dropdown-item" href="<?= base_url().'web/salud'?>"><b>Salud</b></a>
          <a class="dropdown-item" href="<?= base_url().'web/psicologia'?>"><b>Psicologia</b></a>
          <a class="dropdown-item" href="<?= base_url().'web/trabajo_social'?>"><b>Trabajo Social</b></a>
          <a class="dropdown-item" href="<?= base_url().'web/todos'?>"><b>Todos</b></a>
        </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="<?= base_url().'web/marco_legal'?>" style="color: black;"><b>Marco Legal</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="<?= base_url().'web/informe'?>" style="color: black;"><b>Informes</b></a>
      </li>
    </ul>
  </div>
</nav>
