<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->layout->setLayout("admin");
		$this->load->library('Auth');
		$this->load->library('email');
		$this->load->library('mail');
		$this->load->helper('generate_string');
	}
    
    public function index()
	{
		if(Auth::validate_session()){
			echo "Inicio de sesión exitoso";
		}else{
			$this->load->view("admin/auth");
		}
	}

	public function login()
	{
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
			$this->session->set_flashdata('msg', "Los datos ingresados son incorrectos.");
			$this->session->set_flashdata('type', "danger");
			redirect($_SERVER['HTTP_REFERER']);
		}
	}

	public function logout()
	{
		if(Auth::validate_session()){
			// Eliminar las variables de la sesión;
            unset($_SESSION[Auth::$key_session]);
            unset($_COOKIE['PHPSESSIONUSER']);

            // Eliminar los contenedores de la sessión
            setcookie('PHPSESSIONUSER', '', time() - 604800, '/', $_SERVER['HTTP_HOST']);
			
			$this->session->set_flashdata('msg', 'Sesión cerrada exitosamente.');
			$this->session->set_flashdata('type', "success");
		}

		redirect(base_url()."admin/");
	}

	public function restore_password(){
		if(!Auth::validate_session()){
			$usu_correo = $this->input->post('email');

			$request_user = $this->usuario_model->validate_email($usu_correo);

			if($request_user){
				$password = generate_password();
				$request_password = $this->usuario_model->update_password($request_user, $password);

				if($request_password){
					$send_email = $this->mail->email_restore_password($usu_correo, $request_user, $password);
		
					if($send_email){
						$this->session->set_flashdata('msg', "Se envío un e-mail a $usu_correo por favor revise su bandeja de entrada.");
						$this->session->set_flashdata('type', "success");
					}
				}
			}else{
				$this->session->set_flashdata('msg', "El e-mail $usu_correo no se encuentra registrado.");
				$this->session->set_flashdata('type', "warning");
			}
		}

		redirect(base_url()."admin/");
	}
}
