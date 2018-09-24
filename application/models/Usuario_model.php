<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario_model extends CI_Model{
    
    public function __construct()
    {
        parent::__construct();
    }
    
    public function login($usuario = null, $password = null)
    {
        if($usuario && $password)
        {
            $query_password = $this->db->select('usu_contrasena')->from('usuario')->where("usu_usuario = \"$usuario\" LIMIT 1")->get();
            $password_db = $query_password->row()->usu_contrasena;
            
            if(password_verify(base64_encode(hash('sha384', $password, true)), $password_db))
            {
                $query = $this->db->select('per_nombre_uno, per_nombre_dos, per_apellido_uno, per_apellido_dos, usuario.id_rol, rol.rol_tipo_cargo')
                        ->from('usuario') 
                        ->join('persona', 'usuario.id_persona = persona.id_persona')
                        ->join('rol', 'usuario.id_rol = rol.id_rol')
                        ->where("usu_usuario = \"$usuario\" AND usu_contrasena = \"$password_db\" LIMIT 1")
                        ->get();

                return $query->row();
            }
        }

        return null;
    }
}