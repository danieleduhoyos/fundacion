<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Noticia extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->helper('functions');
        $this->layout->setLayout('admin');
    }

    // Funciones Publico
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

    // Funciones Administrativas
    public function create(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $upload = $this->upload_file('noticias', 'image', $_FILES['img-noticia'], 'noticia', 2);

            if($upload['success']){
                $data = array('titulo'            => $this->input->post('titulo-noticia'),
                              'descripcion'       => $this->input->post('desc-noticia'),
                              'imagen'            => $upload['name_file'],
                              'fecha_publicacion' => date('Y-m-d H:i:s'));

                $request = $this->noticia_model->registrar($data);
                
                if($request){
                    $this->session->set_flashdata(array('msg' => 'Noticia Registrada exitosamente', 'type' => 'success'));
                }else{
                    $this->session->set_flashdata(array('msg' => 'No se pudo registrar la noticia. Intente nuevamente', 'type' => 'danger'));

                    if(is_file($upload['path_file'])){
                        unlink($upload['path_file']);
                    }
                }
            }else{
                $this->session->set_flashdata(array('msg' => $upload['error'], 'type' => 'danger'));
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

            if($request_delete){
                $this->session->set_flashdata(array('msg' => 'Noticia eliminada exitosamente', 'type' => 'success'));
                
                if(file_exists($path_file)){
                    unlink($path_file);
                }
            }else{
                $this->session->set_flashdata(array('msg' => 'No se eliminó la noticia. Intente nuevamente', 'type' => 'danger'));
            }
            
            redirect(base_url().'noticia/');
        }

        redirect(base_url().'admin/');
    }

    public function editar(){
        if(verify_token($this->session->usu_usuario, $this->session->token)){
            $data = array(
                'titulo'            => $this->input->post('titulo-editar-noticia'),
                'descripcion'       => $this->input->post('desc-editar-noticia')
            );
            
            if($_FILES['img-editar-noticia']['error'] == 0){
                $upload = $this->upload_file('noticias', 'image', $_FILES['img-editar-noticia'], 'noticia', 2);
                $data['imagen'] = $upload['name_file'];
            }

            $request = $this->noticia_model->editar($this->input->post('id-editar-noticia'), $data);

            if($request){
                $this->session->set_flashdata(array('msg' => 'Noticia actualizada exitosamente', 'type' => 'success'));
            }else{
                $this->session->set_flashdata(array('msg' => 'No se pudo editar la noticia. Intente nuevamente', 'type' => 'danger'));

                if(is_file($upload['path_file'])){
                    unlink($upload['path_file']);
                }
            }
            redirect(base_url().'noticia/');
        }
        
    }

    // Funciones de Archivos
    public function upload_file($directory = null, $type = null, $file = null, $name = null, $size = 0){
        $path       = $_SERVER['DOCUMENT_ROOT'].'/'.$this->config->item('app_name').'public/';
        $fecha_now  = date("YmdHis");
        $ext        = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
        $name_file  = "$name-$fecha_now.$ext";
        $path_file  = "$path$directory/$name_file";
        $size_file  = $file['size'];

        $size_allow = ($size * 1000000);
        $data = array();

        if($size_file <= $size_allow){
            switch($type){
                case 'image':
                    if($ext === 'png' || $ext === 'PNG' || $ext === 'jpg' || $ext === 'JPG' || $ext === 'jpeg' || $ext === 'JPEG'){
                        $data['success']    = move_uploaded_file($file['tmp_name'], $path_file);
                        $data['name_file']  = $name_file;
                        $data['path_file'] = $path_file;
                    }else{
                        $data['error'] = "El archivo que intenta subir no es una imagén.";
                    }
                break;  
            }
        }else{
            $data['error'] = "El archivo que intenta subir es muy grande el tamaño maximo es de $size MB";
        }

        return $data;
    }
}
?>