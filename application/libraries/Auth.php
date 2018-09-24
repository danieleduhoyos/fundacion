<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    
class Auth{
    public static $key_session = 'user';
    private static $login;
    
    public static function validate_session(){
        if (isset($_SESSION[self::$key_session])) {
            self::$login = json_decode($_SESSION[self::$key_session]);
        }else if(isset($_COOKIE['PHPSESSIONUSER'])){
            self::$login = json_decode(base64_decode($_COOKIE['PHPSESSIONUSER']));
        }else{
            self::$login = false;
        }

        return self::$login;
    }
}
?>