<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Noticia extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->helper('functions');
        $this->layout->setLayout('admin');
    }

    public function index(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $noticias = $this->noticia_model->noticias();
            $this->layout->view('index', compact('noticias'));
        }else{
            $this->session->set_flashdata('msg', 'No tiene permiso para realizar esta operación');
            $this->session->set_flashdata('status', 'warning');
            redirect(base_url().'admin/');
        }
    }

    public function ver(){
        $id_noticia = $this->input->get('id_noticia');
        $noticia    = $this->noticia_model->ver($id_noticia);

        echo json_encode($noticia);
    }

    public function create(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $directory  = $_SERVER['DOCUMENT_ROOT'].'/'.$this->config->item('app_name').'public/noticias/';
            $ext        = strtolower(pathinfo($_FILES['img-noticia']['name'], PATHINFO_EXTENSION));
            $fecha_now  = date("YmdHis");
            $name_file  = 'noticia-'.$fecha_now.'.'.$ext;
            $path_file  = $directory.$name_file;
            $size       =  $_FILES['img-noticia']['size'];
            
            if($size <= 1000000 ){
                if($ext === 'png' || $ext === 'PNG' || $ext === 'jpg' || $ext === 'JPG' || $ext === 'jpeg' || $ext === 'JPEG'){
                    if(file_exists($path_file)){
                        unlink($path_file);
                    }
                    if(move_uploaded_file($_FILES['img-noticia']['tmp_name'], $path_file)){
                        
                        $data = array(
                            'titulo'            => $this->input->post('titulo-noticia'),
                            'descripcion'       => $this->input->post('desc-noticia'),
                            'imagen'            => $name_file,
                            'fecha_publicacion' => date('Y-m-d H:i:s')
                        );

                        $request = $this->noticia_model->registrar($data);
                        
                        if($request){
                             $this->session->set_flashdata("msg", "Noticia Registrado exitosamente");
                             $this->session->set_flashdata("type", "success");
                        }else{
                             unlink($path_file);
                        }
                    }
                }else{
                    $this->session->set_flashdata('msg', 'El archivo que intenta subir no es una imágen');
                    $this->session->set_flashdata('type', 'warning');
                }
            }else{
                $this->session->set_flashdata('msg', 'El tamaño del archivo es muy grande el tamaño maximo es de 1MB');
                $this->session->set_flashdata('type', 'warning');
            }
            
            redirect(base_url().'noticia/');
        }

        redirect(base_url().'admin/');
    }

    public function eliminar($id = null){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $request_file = $this->noticia_model->get_file($id);
            $request_delete = $this->noticia_model->delete($id);

            $directory  = $_SERVER['DOCUMENT_ROOT'].'/'.$this->config->item('app_name').'public/noticias/';
            $path_file  = $directory . $request_file;

            echo $path_file;

            if($request_delete){
                if(file_exists($path_file)){
                    unlink($path_file);
                }

                $this->session->set_flashdata('msg', 'La noticia fue eliminada exitosamente');
                $this->session->set_flashdata('type', 'success');

                redirect(base_url().'noticia/');
            }
        }

        redirect(base_url().'admin/');
    }

    public function editar(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $image_noticia = $this->input->post('img-data-noticia');

            if($_FILES['img-editar-noticia']['error'] == 0){
                $directory  = $_SERVER['DOCUMENT_ROOT'].'/'.$this->config->item('app_name').'public/noticias/';
                $ext        = strtolower(pathinfo($_FILES['img-editar-noticia']['name'], PATHINFO_EXTENSION));
                $fecha_now  = date("YmdHis");
                $name_file  = 'noticia-'.$fecha_now.'.'.$ext;
                $path_file  = $directory.$name_file;
                $size       =  $_FILES['img-editar-noticia']['size'];
                
                if($size <= 1000000 ){
                    if($ext === 'png' || $ext === 'PNG' || $ext === 'jpg' || $ext === 'JPG' || $ext === 'jpeg' || $ext === 'JPEG'){
                        if(file_exists($path_file)){
                            unlink($path_file);
                        }
                        if(move_uploaded_file($_FILES['img-editar-noticia']['tmp_name'], $path_file)){
                            $image_noticia = $name_file;

                            unlink($directory.$this->input->post('img-data-noticia'));
                        }
                    }else{
                        $this->session->set_flashdata('msg', 'El archivo que intenta subir no es una imágen');
                        $this->session->set_flashdata('type', 'warning');
                    }
                }else{
                    $this->session->set_flashdata('msg', 'El tamaño del archivo es muy grande el tamaño maximo es de 1MB');
                    $this->session->set_flashdata('type', 'warning');
                }

            }

            $data = array(
                'id'                => $this->input->post('id-editar-noticia'),
                'titulo'            => $this->input->post('titulo-editar-noticia'),
                'descripcion'       => $this->input->post('desc-editar-noticia'),
                'imagen'            => $image_noticia
            );

            $request = $this->noticia_model->editar($data);
                        
            if($request){
                    $this->session->set_flashdata("msg", "Noticia Actualizada exitosamente");
                    $this->session->set_flashdata("type", "success");
            }else{
                    unlink($path_file);
            }

            redirect(base_url().'noticia/');
        }

        redirect(base_url().'admin/');
    }
}
?>