<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

class Web_model extends CI_Model{
    
    public function __construct()
    {
        parent::__construct();
    }
    public function ver_noticias()
    {
        $query= $this->db
                    ->select('id_noticia,titulo,descripcion')
                    ->from('noticia')
                    ->order_by('id_noticia', 'DESC')
                    ->limit(1)
                    ->get();
        return $query->result();
    }
    public function ver_archivos()
    {
        $query = $this->db
                        ->select('*')
                        ->from('informe')
                        ->get();
        return $query->result();
    }
}