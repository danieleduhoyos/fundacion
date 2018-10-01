<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    function generate_password($limit = 10){
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $characters_length = strlen($characters);

        $random_string = '';

        for ($i = 0; $i < $limit; $i++) {
            $random_string .= $characters[rand(0, $characters_length - 1)];
        }

        return $random_string;
    }
?>