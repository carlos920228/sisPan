<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public $estatus;
function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('user_model');
		$this->load->model('prov_model');
		$this->load->model('estruc_model');
		$this->load->model('solicitud_model');
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
			$test['data']=$this->solicitud_model->get_solicitud();

			$this->load->view('menu',$test);
			$this->load->view('crudSol',$test);
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

	//Eucario
	public function addSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->user_model->data($_SESSION['username']);

    if ($_FILES['userfile']['error'] == UPLOAD_ERR_NO_FILE)
    {
    	echo "Error al subir la factura";
    }
    else
    {
      $this->cargar_factura();

      $this->solicitud_model->fecha = $this->input->post('Fecha');
  	  $this->solicitud_model->nombre = $this->input->post('Nombre');
      $this->solicitud_model->area = $this->input->post('area');
      $this->solicitud_model->comision = $this->input->post('denominacion_comision');
      $this->solicitud_model->c_origen = $this->input->post('ciudad_origen');
      $this->solicitud_model->e_origen = $this->input->post('estado_origen');
      $this->solicitud_model->c_destino = $this->input->post('ciudad_destino');
  	  $this->solicitud_model->e_destino = $this->input->post('estado_destino');
  	  //$this->solicitud_model->archivo = $this->input->post('userfile');
      $this->solicitud_model->estatus = $this->estatus;

      $this->solicitud_model->add_sol($_POST);
    }

			redirect('welcome/verSolicitudes');
			}else{
		redirect('welcome');
		}
	}



//funcion que guarda las facturas
function cargar_factura() {

//$mi_imagen = 'mi_image';

$config = array(
'file_name' => "prueba.xml",
'upload_path' => "./uploads/",
'allowed_types' => "xml",
'overwrite' => TRUE,
'max_size' => "4096000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
//'max_height' => "768",
//'max_width' => "1024"
);

    $this->load->library('upload', $config);

    if (!$this->upload->do_upload()) {
        //*** ocurrio un error
        $data['uploadError'] = $this->upload->display_errors();
        echo $this->upload->display_errors();
        $this->session->set_flashdata('correcto', 'Error al subir el Comprobante Fiscal');
        return;
    }

    else
    {
      //$this->load->model('Recursos_model');
      //$this->Recursos_model->update_factura($archivo);


      $xml = new SimpleXMLElement ("./uploads/prueba.xml",null,true);
      //$namespaces = $xml->getDocNamespaces();
      $ns = $xml->getNamespaces(true);

if ($xml->getName()=="Comprobante")

{
      $xml->registerXPathNamespace('c', $ns['cfdi']);
      $xml->registerXPathNamespace('t', $ns['tfd']);

      foreach ($xml->xpath('//cfdi:Comprobante//cfdi:Emisor') as $Emisor)
      { $emisor = $Emisor['Rfc'];}

      foreach ($xml->xpath('//cfdi:Comprobante//cfdi:Receptor') as $Receptor)
      { $receptor = $Receptor['Rfc'];}

      foreach ($xml->xpath('//cfdi:Comprobante') as $Comprobante)
      { $total = $Comprobante['Total'];}
 
      foreach ($xml->xpath('//t:TimbreFiscalDigital') as $tfd) 
      { $uuid= $tfd['UUID'];} 


      $soap = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/"><soapenv:Header/><soapenv:Body><tem:Consulta><tem:expresionImpresa>?re='.$emisor.'&amp;rr='.$receptor.'&amp;tt='.$total.'&amp;id='.$uuid.'</tem:expresionImpresa></tem:Consulta></soapenv:Body></soapenv:Envelope>';

      $headers = 
                ['Content-Type: text/xml;charset=utf-8',
                 'SOAPAction: http://tempuri.org/IConsultaCFDIService/Consulta',
                 'Content-length: '.strlen($soap)];

      $url = 'https://consultaqr.facturaelectronica.sat.gob.mx/ConsultaCFDIService.svc';
      $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $soap);
            curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

      $res = curl_exec($ch);
             curl_close($ch);

      $xml = simplexml_load_string($res);
      $data = $xml->children('s', true)->children('', true)->children('', true);
      $data = json_encode($data->children('a', true), JSON_UNESCAPED_UNICODE);
      $obj = json_decode( preg_replace('/[\x00-\x1F\x80-\xFF]/', '', $data), true );

      $valido = $obj['Estado'];

      if ($valido=="Vigente")
      {
        //$this->session->set_flashdata('correcto', 'El Comprobante Fiscal es Valido');
        //echo "El Comprobante Fiscal es Valido";
        $this->estatus=2;
      }
      else
      {
        //$this->session->set_flashdata('error', 'El Comprobante Fiscal es Invalido');
        //echo "El Comprobante Fiscal es Invalido";
        $this->estatus=1;
      }
}

else
      {
        //$this->session->set_flashdata('error', 'El XML no es un Comprobante Fiscal');
        //echo "El XML no es un Comprobante Fiscal";
        $this->estatus=0;
      }
      
      //redirect('Recursos');

    }


}

}
