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
            
            if($this->db->affected_rows()){
                $password_db = $query_password->row()->usu_contrasena;
                
                if(password_verify(base64_encode(hash('sha384', $password, true)), $password_db))
                {
                    $query = $this->db->select('usu_usuario, usu_correo, per_fecha_registro, per_nombre_uno, per_nombre_dos, per_apellido_uno, per_apellido_dos, per_fecha_nacimiento, per_tipo_documento, per_documento, usuario.id_rol, rol.rol_tipo_cargo')
                            ->from('usuario') 
                            ->join('persona', 'usuario.id_persona = persona.id_persona')
                            ->join('rol', 'usuario.id_rol = rol.id_rol')
                            ->where("usu_usuario = \"$usuario\" AND usu_contrasena = \"$password_db\" LIMIT 1")
                            ->get();
    
                    return $query->row();
                }
            }
        }

        return null;
    }

    public function validate_email($email = null)
    {
        if($email){
            $query = $this->db->select('usu_usuario')->from('usuario')->where("usu_correo = \"$email\" LIMIT 1")->get();

            if($this->db->affected_rows()){
                return $query->row()->usu_usuario;
            }
        }

        return null;
    }

    public function update_password($usuario = null, $password = null)
    {
        if($usuario && $password){
            $password_encrypt = password_hash(base64_encode(hash('sha384', $password, true)), PASSWORD_DEFAULT);
            $query = $this->db->set('usu_contrasena', $password_encrypt)
                              ->where('usu_usuario', $usuario)
                              ->update('usuario');
            
            return $this->db->affected_rows();
        }

        return null;
    }
}