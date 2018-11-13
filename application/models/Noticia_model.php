<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

class Noticia_model extends CI_Model{
    
    public function __construct()
    {
        parent::__construct();
    }

    public function ver_noticias($cantidad = null){
        $query = $this->db->select('*')
                        ->from('noticia')
                        ->order_by('fecha_publicacion', 'desc')
                        ->limit($cantidad)
                        ->get();
        
        return $query->result();
    }

    public function noticias(){
        $query = $this->db->select('*')
                        ->from('noticia')
                        ->order_by('fecha_publicacion', 'desc')
                        ->get();
        
        return $query->result();
    }

    public function registrar($data = array())
    {
        if($data){
            $query = $this->db->insert('noticia', $data);
            return $this->db->affected_rows();
        }

        return null;
    }

    public function ver($id_noticia = null){
        $query = $this->db->select('*')
                        ->from('noticia')
                        ->where("id_noticia", $id_noticia)
                        ->limit(1)
                        ->get();
        
        return $query->result();
    }

    public function get_file($id_noticia = null){
        $query = $this->db->select('imagen')
                        ->from('noticia')
                        ->where("id_noticia", $id_noticia)
                        ->limit(1)
                        ->get()
                        ->row();
        
        return $query->imagen;
    }

    public function delete($id_noticia){
        $query = $this->db->where('id_noticia', $id_noticia)
                          ->delete('noticia');

        return $this->db->affected_rows();
    }

    public function editar($data = array()){
        $query = $this->db->set('titulo', $data['titulo'])
                          ->set('descripcion', $data['descripcion'])
                          ->set('imagen', $data['imagen'])
                          ->where('id_noticia', $data['id'])
                          ->update('noticia');
        return $this->db->affected_rows();
    }
}