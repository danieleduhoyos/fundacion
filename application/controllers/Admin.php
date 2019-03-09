<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->layout->setLayout("admin");
		$this->load->helper('functions');
		$this->load->library('form_validation');
		$this->load->library('email');
		$this->load->library('mail');
	}
    
    public function index()
	{
		verify_token($this->session->usu_usuario, $this->session->token) ? $this->layout->view("index") : $this->load->view('admin/auth');
	}

	public function login()
	{
		if(!$this->session->token && $this->input->post()){
			if(verify_token('ingreso-usuario', $this->input->post('token', true))){
				$this->form_validation->set_rules('usuario', 'Usuario', 'trim|required|min_length[5]|max_length[15]');
				$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[5]|max_length[20]');
				
				if ($this->form_validation->run() == TRUE) {
					$usu_usuario	= $this->input->post('usuario');
					$usu_password	= $this->input->post('password');

					$request = $this->usuario_model->login($usu_usuario, $usu_password);

					if($request){
						$this->session->set_userdata((array) $request);
						$this->session->set_userdata('token', generate_token($this->session->usu_usuario));
					}else{
						$this->session->set_flashdata('msg', "El usuario y/o la contraseña son incorrectos.");
						$this->session->set_flashdata('type', "danger");
					}
				} else {
					$this->session->set_flashdata('msg', "Datos ingresados incorrectos.");
					$this->session->set_flashdata('type', "danger");
				}
				
			}
		}
		redirect(base_url()."admin/");
	}

	public function logout()
	{
		if(verify_token($this->session->usu_usuario, $this->session->token)){
			$this->session->sess_destroy();
		}

		redirect(base_url()."admin/");
	}

	public function restore_password()
	{
		if(!$this->session->token){
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
					}else{
						$this->session->set_flashdata('msg', "No se realizo el envio de un e-mail a $usu_correo por favor intente nuevamente");
						$this->session->set_flashdata('type', "warning");
					}
				}
			}else{
				$this->session->set_flashdata('msg', "El e-mail $usu_correo no se encuentra registrado.");
				$this->session->set_flashdata('type', "danger");
			}
		}

		redirect(base_url()."admin/");
	}

	public function update_password(){
		if(verify_token($this->session->usu_usuario, $this->session->token) && $this->input->post()){
			$this->form_validation->set_rules('contrasena-actual', 'Actual', 'trim|required|min_length[5]|max_length[50]');
			$this->form_validation->set_rules('contrasena-nueva', 'Nueva', 'trim|required|min_length[5]|max_length[50]');
			$this->form_validation->set_rules('contrasena-confirmar', 'Confirmar', 'trim|required|min_length[5]|max_length[50]');

			if ($this->form_validation->run() == TRUE) {
				$contrasena_actual		= $this->input->post('contrasena-actual');
				$contrasena_nueva		= $this->input->post('contrasena-nueva');
				$contrasena_confirmar	= $this->input->post('contrasena-confirmar');

				$request = $this->usuario_model->validate_password($this->session->usu_usuario, $contrasena_actual);

				if($request && ($contrasena_nueva == $contrasena_confirmar)){
					$update = $this->usuario_model->update_password($this->session->usu_usuario, $contrasena_nueva);

					if($update){
						$this->session->set_flashdata('msg', "Su contraseña se actualizó correctamente");
						$this->session->set_flashdata('type', "success");
					}else{
						$this->session->set_flashdata('msg', "No se actualizó su contraseña. Por favor intentelo nuevamente.");
						$this->session->set_flashdata('type', "danger");
					}
				}else{
					$this->session->set_flashdata('msg', "Las contraseñas ingresadas no coinciden. Por favor intentelo nuevamente.");
					$this->session->set_flashdata('type', "danger");
				}
			} else {
				$this->session->set_flashdata('msg', "Datos ingresados incorrectos.");
				$this->session->set_flashdata('type', "danger");
			}

			redirect(base_url()."usuario/");
		}

		redirect(base_url()."admin/");
	}
}