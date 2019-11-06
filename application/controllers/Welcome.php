<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('user_model');
		$this->load->model('prov_model');
		$this->load->model('estruc_model');
	}
	public function index(){
		if(isset($_SESSION['username'])){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('principal');
		}else{
		$this->load->view('loginv2');
		}
	}
	public function entrar(){
		if(isset($_SESSION['username'])){

		}
		if($this->user_model->login($_POST['username'],$_POST['password'])){
			//Guardamos el nombre de usuario
			$this->session->set_userdata('username',$_POST['username']);
			$user=$this->user_model->data($_POST['username']);
			$test['user']=$user;
			$use=$user[0];
			//Guardamos el rol en la sesion
			$this->session->set_userdata('rol',$use->nivel);
			$this->load->view('menu',$test);
			$this->load->view('principal');
		}else{
			redirect('welcome');
			}
		
	}
		
	public function exit(){
		$this->session->sess_destroy();
		redirect('welcome');
	}
	
	public function generarSolicitud(){
		if(isset($_SESSION['username'])){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('principal');
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verMisSolicitudes(){
		if(isset($_SESSION['username'])){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('solicitudes');
			
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verSolicitudes(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verProveedores(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$test['data']=$this->prov_model->get_prov();
			$this->load->view('menu',$test);
			$this->load->view('crudProv',$test);
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verUsuarios(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$test['data']=$this->user_model->get_user();
			$this->load->view('menu',$test);
			$this->load->view('crudUsuarios',$test);
		}else{
		$this->load->view('loginv2');
		}
	}
	public function addUser(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->user_model->add_user($_POST);
			redirect('welcome/verUsuarios');
			}else{
		redirect('welcome');
		}
	}
	public function deleteUser(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->user_model->delete_user($_GET['id']);
			redirect('welcome/verUsuarios');
		}else{
		redirect('welcome');
		}
	}

	public function addProv(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->prov_model->add_prov($_POST);
			redirect('welcome/verProveedores');
			}else{
		redirect('welcome');
		}
	}
	public function deleteProv(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->prov_model->delete_prov($_GET['id']);
			redirect('welcome/verProveedores');
		}else{
		redirect('welcome');
		}}

		//Método para actualizar al proveedor
	public function updateProv(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['prov']=$this->prov_model->get_prov_detalle($_GET['id']);
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('modProv',$test);
		}else{
		redirect('welcome');
		}
	}
	public function updateProvTrue(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->prov_model->update_prov($_GET['id'],$_POST);
			redirect('welcome/verProveedores');
		}else{
		redirect('welcome');
		}
	}
	//Métodos estructuras
	//Pantalla inicial
	public function estructuras(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$test['data']=$this->estruc_model->get_estructuras();
			$this->load->view('menu',$test);
			$this->load->view('crudEstructuras',$test);
		}else{
		$this->load->view('loginv2');
		}}
//Agregar
public function addEstructuras(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->estruc_model->add_estructura($_POST);
			redirect('welcome/estructuras');
			}else{
		redirect('welcome');
		}
	}
		//Vista a detalle de estructura seleccionada
		public function updateEstruc(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['prov']=$this->estruc_model->get_detalle($_GET['id']);
			$test['user']=$this->user_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('modEstruc',$test);
		}else{
		redirect('welcome');
		}
	
	}
	// Actualizar estructura
	public function updateEstrucTrue(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->estruc_model->update_estruc($_GET['id'],$_POST);
			redirect('welcome/estructuras');
		}else{
		redirect('welcome');
		}
	}
	//Eliminar Estructura
	public function deleteEstruc(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->estruc_model->delete_estruc($_GET['id']);
			redirect('welcome/estructuras');
		}else{
		redirect('welcome');
		}
	}
}
