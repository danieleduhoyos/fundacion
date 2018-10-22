<nav class="py-2">
<ul class="nav flex-column px-2">
        <?php
            if($this->session->rol_tipo_cargo === "jefe"){
                ?>
               <li class="nav-item">
                   <a class="nav-link" href="<?= base_url() ?>usuario/lista"><i class="fas fa-users"></i> Usuarios</a>
               </li>
            <?php
            }
        ?>
        <li class="nav-item">
            <a class="nav-link" href="<?=  base_url() ?>usuario/"><i class="fas fa-user-md"></i> Perfil</a>
        </li>
        <?php
            if($this->session->rol_tipo_cargo == "admin"){
                ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url() ?>informe/"><i class="fas fa-file-invoice-dollar"></i> Informes Financieros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url() ?>noticia/"><i class="fas fa-file-alt"></i></i> Noticias</a>
                </li>
            <?php
            }
        ?>
        <li class="nav-item">
            <a class="nav-link" href="<?=  base_url() ?>admin/logout" title="Cerrar sesión"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</a>
        </li>
    </ul>
</nav>