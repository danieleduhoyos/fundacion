<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->layout->setLayout("admin");
		$this->load->library('Auth');
	}
    
    public function index()
	{
		if(Auth::validate_session()){
			echo "Inicio de sesión exitoso";
		}else{
			$this->load->view("admin/auth");
		}
	}

	public function login(){
		$usu_usuario	= $this->input->post('usuario');
		$usu_password	= $this->input->post('password');
		$recuerdame		= $this->input->post('recuerdame');

		$request = $this->usuario_model->login($usu_usuario, $usu_password);

		if($request){
			$_SESSION[Auth::$key_session] = json_encode($request);

			if ($recuerdame == 'on') {
				setcookie('PHPSESSIONUSER', base64_encode($_SESSION[Auth::$key_session]), time()+604800, '/', $_SERVER['HTTP_HOST']);
			}
			redirect(base_url()."admin/");
		}else{
			redirect($_SERVER['HTTP_REFERER']);
		}
	}

	public function logout(){
		if(Auth::validate_session()){
			// Eliminar las variables de la sesión;
            unset($_SESSION[Auth::$key_session]);
            unset($_COOKIE['PHPSESSIONUSER']);

            // Eliminar los contenedores de la sessión
            setcookie('PHPSESSIONUSER', '', time() - 604800, '/', $_SERVER['HTTP_HOST']);
			
			$this->session->set_flashdata('msg', 'Sesión cerrada exitosamente.');
		}

		redirect(base_url()."admin/");
	}
}
