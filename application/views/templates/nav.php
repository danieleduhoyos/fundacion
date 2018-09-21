<nav id="nav" style="background-color: #44A4E2!important; " class="navbar navbar-toggler navbar-expand-lg navbar-light bg-light">
<img src="<?= base_url().'public/img/logo.png'?>" style="width: 230px; height: 70px;">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="i" style="color: black;"><b>Inicio</b></a>
      </li>
      <li class="nav-item" >
        <a class="nav-link" href="#" style="color: black;"><b>Quienes somos</b></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" style="color: black;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <b>Dropdown</b>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="color: black;">
          <a class="dropdown-item" href="#"><b>Action</b></a>
          <a class="dropdown-item" href="#"><b>Another action</b></a>
          <!-- <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div> -->
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" style="color: black;"><b>Disabled</b></a>
      </li>
      <li>
        <a href="#" title="Facebook">
            <img src="<?= base_url().'public/img/facebook.png'?>" style="width: 28px; height: 24px;">
        </a>
      </li>|
      <li>
        <a href="#" title="Gmail">
            <img src="<?= base_url().'public/img/correo.png'?>" style="width: 28px; height: 24px;">
        </a>
      </li>
    </ul>
  </div>
</nav>