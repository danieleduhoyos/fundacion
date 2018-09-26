<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->library("Auth");
    }
    
    public function registrar(){
        echo "Vamos a registrar un usuario";
    }
}

?>