<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller {
function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('user_model');
	}
	public function entrar(){
		
			redirect('welcome');
	}
	public function update(){
		if(isset($_SESSION['username'])){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
		}else{
		$this->load->view('loginv2');
		}
	}
	
	}


