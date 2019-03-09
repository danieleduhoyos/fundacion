<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->helper('functions');
        $this->layout->setLayout('admin');
    }

    public function index(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $this->layout->view('perfil');
        }else{
            redirect(base_url().'admin/');  
        }
    }

    public function lista(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            if($this->session->rol_tipo_cargo == 'jefe'){
                $this->layout->view('lista');
            }else{
                $this->session->flashdata('msg', 'No tiene permisos suficientes para realizar esta acción');
                $this->session->flashdata('type', 'danger');
                
                redirect(base_url().'admin/');   
            }
        }else{
            redirect(base_url().'admin/'); 
        }  
    }
}

?>