<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informe extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->helper('functions');
        $this->layout->setLayout('admin');
    }

    public function index(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $informes = $this->informe_model->ver_documentos();
            $this->layout->view('index', compact('informes'));
        }else{
            $this->session->set_flashdata('msg', 'No tiene permiso para realizar esta operación');
            $this->session->set_flashdata('status', 'warning');
            redirect(base_url().'admin/');
        }
    }

    public function registrar(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $directory  = $_SERVER['DOCUMENT_ROOT'].'/'.$this->config->item('app_name').'public/informes/';
            $ext        = strtolower(pathinfo($_FILES['informe']['name'], PATHINFO_EXTENSION));
            $name_file  = 'informe-financiero-'.$this->input->post('fecha').'.'.$ext;
            $path_file  = $directory.$name_file;
            $size       =  $_FILES['informe']['size'];

            if($size <= 2000000 ){
                if($ext === 'pdf'){
                    if(file_exists($path_file)){
                        unlink($path_file);
                    }
                    if(move_uploaded_file($_FILES['informe']['tmp_name'], $path_file)){
                        
                        $data = array(
                            'fecha'   => $this->input->post('fecha'),
                            'informe' => $name_file
                        );
                        
                        $request = $this->informe_model->registrar($data);
                        
                        if($request){
                            $this->session->set_flashdata("msg", "Informe Registrado exitosamente");
                            $this->session->set_flashdata("type", "success");
                        }else{
                            unlink($path_file);
                        }
                    }
                }else{
                    $this->session->set_flashdata('msg', 'El archivo que intenta subir no es un documento PDF');
                    $this->session->set_flashdata('type', 'warning');
                }
            }else{
                $this->session->set_flashdata('msg', 'El tamaño del archivo es muy grande el tamaño maximo es de 2MB');
                $this->session->set_flashdata('type', 'warning');
            }
            
            redirect(base_url().'informe/');
        }

        redirect(base_url().'admin/');
    }

    public function validar_informe(){
        if($this->input->get()){
            $request = $this->informe_model->validar_fecha($this->input->get('fecha_search'));

            $data = array(
                'usuario' => $request ? true : false
            );

            echo json_encode($data);
        }
    }

    public function descargar($document = null){
        $path_file = $_SERVER['DOCUMENT_ROOT'].'/'.$this->config->item('app_name').'public/informes/'. $document;

        if(is_file($path_file)){
            header("Content-disposition: attachment; filename=$document");
            header("Content-type: MIME");
            readfile($path_file);
        }else{
            $this->session->set_flashdata('msg', 'Documento no encontrado');
            $this->session->set_flashdata('type', 'danger');

            echo "<script>window.history.go(-1)</script>";
        }
    }

    public function eliminar($document = null){
        $directory  = $_SERVER['DOCUMENT_ROOT'].'/'.$this->config->item('app_name').'public/informes/'. $document;

        if(file_exists($directory)){
            unlink($directory);
        }

        $request = $this->informe_model->eliminar_documento($document);
        
        $this->session->set_flashdata('msg', 'Informe eliminado.');
        $this->session->set_flashdata('type', 'success');

        redirect(base_url().'informe/');
    }
}

?>