<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informes extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->helper('functions');
        $this->layout->setLayout('admin');
    }

    public function index(){
        $this->layout->view('index');
    }
}

?>