<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function generate_password($limit = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $characters_length = strlen($characters);

        $random_string = '';

        for ($i = 0; $i < $limit; $i++) {
            $random_string .= $characters[rand(0, $characters_length - 1)];
        }

        return $random_string;
    }

    function generate_token($value) 
    {
        $token = password_hash(base64_encode(hash('sha384', $value, true)), PASSWORD_DEFAULT);

        return $token;
    }

    function verify_token($value, $token) 
    {
        return password_verify(base64_encode(hash('sha384', $value, true)), $token);
    }
?>