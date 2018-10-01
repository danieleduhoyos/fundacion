<?php

class Mail
{   
    protected $CI;

    public function __construct(){
        $this->CI = get_instance();

        $this->CI->load->helper('email');
        $this->CI->load->library('email');
        $this->CI->config->load('email');
    }

    private function send_email($subject, $body, $recipients) {
        $result = $this->CI->email
                       ->from($this->CI->config->item('smtp_user'), 'Salvando sueños')
                       ->to($recipients)
                       ->subject($subject)
                       ->message($body)
                       ->send();
        
        return $result;
    }

    public function email_restore_password($destinatario, $usuario, $password){

        // Asunto
        $subject = "Recuperación contraseña de usuario";
        // Mensaje
        $body = "<div style=\"background-color: #f7f7f7; text-align: center; padding: 25px\">
                    <div style=\"text-align: center\">
                        <a href=\"http://fundacionsalvandosuenos.org/\">
                            <img src=\"http://fundacionsalvandosuenos.org/public/img/logo.png\" alt=\"Logo Fundación Salvando Sueños\" style=\"width: 320px; margin-bottom: 25px\">
                        </a>
                        <div style=\"background-color: #fff; border-radius: 3px; color: #343a40; font-family: sans-serif; margin: 0 auto; padding: 25px; width: 450px; \">
                            <img src=\"http://fundacionsalvandosuenos.org/public/img/email.png\" alt=\"Icon email\" style=\"width: 100px;\">
                            <h1>Recuperación de contraseña</h1>
                            <hr style=\"margin: 20px 0\">
                            <p style=\"text-align: justify\">Su contraseña fue restaurada, para iniciar sesión en el sistema lo puede hacer con los siguientes datos: .</p>
                            <p style=\"text-align: left\">
                                <b>Usuario: </b> $usuario <br>
                                <b>Contraseña: </b> $password
                            </p><br>
                            <a href=\"http://fundacionsalvandosuenos.org/admin/\" style=\"color: white; font-weight: bold; text-decoration: none; background-color: #0276b8; border-radius: 3px; padding: 15px\">
                                Iniciar sessión desde aquí
                            </a>
                        </div>
                    </div>
                </div>";

        // Destinatario
        $recipient = $destinatario;

        return self::send_email($subject, $body, $recipient);
    }
}
