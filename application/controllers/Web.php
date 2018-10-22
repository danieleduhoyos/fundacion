<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->layout->setLayout("template_pagina");
	}
    public function index()
	{
		$noticia=$this->web_model->ver_noticias();
		$this->layout->view("inicio", compact('noticia'));
	}
	public function administrativa()
	{
		$this->layout->view("administrativa");
	}
	public function ingreso()
	{
		$this->layout->view("ingreso");
	}
	public function marco_legal()
	{
		$this->layout->view("marco_legal");
	}
	public function pedagogia()
	{
		$this->layout->view("pedagogia");
	}
	public function psicologia()
	{
		$this->layout->view("psicologia");
	}
	public function quienes_somos()
	{
		$this->layout->view("quienes_somos");
	}
	public function salud()
	{
		$this->layout->view("salud");
	}
	public function todos()
	{
		$this->layout->view("todos");
	}
	public function trabajo_social()
	{
		$this->layout->view("trabajo_social");
	}
	public function informe()
	{
		$date = date('Y');
		$informe= $this->web_model->ver_archivos();
		$this->layout->view("informe",compact('informe'));
	}
}
