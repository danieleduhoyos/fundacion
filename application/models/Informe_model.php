<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

class Informe_model extends CI_Model{
    
    public function __construct()
    {
        parent::__construct();
    }

    public function registrar($data = array())
    {
        if($data){
            $query = $this->db->insert('informe', $data);
            return $this->db->affected_rows();
        }

        return null;
    }

    public function validar_fecha($fecha = null){
        if($fecha){
            $query = $this->db->select("*")
                          ->from('informe')
                          ->where('fecha', $fecha)
                          ->get();
            
            return $query->num_rows();
        }

        return null;
    }

    public function ver_documentos(){
        $query = $this->db->select('*')
                        ->from('informe')
                        ->order_by('fecha', 'desc')
                        ->get();
        
        return $query->result();
    }

    public function eliminar_documento($documento = null){
        $this->db->where('informe', $documento);
        $this->db->delete('informe');
    }
}