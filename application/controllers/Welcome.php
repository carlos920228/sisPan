<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public $estatus;
function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('User_model');
		$this->load->model('Prov_model');
		$this->load->model('Estruc_model');
		$this->load->model('Solicitud_model');
	}
	public function index(){
		if(isset($_SESSION['username'])){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('principal');
		}else{
		$this->load->view('loginv2');
		}
	}
	public function entrar(){
		if(isset($_SESSION['username'])){

		}
		if($this->User_model->login($_POST['username'],$_POST['password'])){
			//Guardamos el nombre de usuario
			$this->session->set_userdata('username',$_POST['username']);
			$user=$this->User_model->data($_POST['username']);
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
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('solPropia');
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verMisSolicitudes(){
		if(isset($_SESSION['username'])){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$user=$test['user'];
			$use=$user[0];
			$name=$use->nombre." ".$use->apellidos;
			$test['pendientes']=$this->Solicitud_model->get_solUserPenWait($name,'pendiente');
			$test['canceladas']=$this->Solicitud_model->get_solUserPenWait($name,'cancelada');
			$test['aceptadas']=$this->Solicitud_model->get_solUserPenWait($name,'aceptada');
			$test['pagadas']=$this->Solicitud_model->get_solUserPenWait($name,'pagada');
			$this->load->view('menu',$test);
			$this->load->view('solicitudes',$test);
			
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verSolicitudes(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$test['data']=$this->Solicitud_model->get_solicitud();
			$this->load->view('crudSol',$test);
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verProveedores(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$test['data']=$this->Prov_model->get_prov();
			$this->load->view('menu',$test);
			$this->load->view('crudProv',$test);
		}else{
		$this->load->view('loginv2');
		}
	}
	public function verUsuarios(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$test['data']=$this->User_model->get_user();
			$this->load->view('menu',$test);
			$this->load->view('crudUsuarios',$test);
		}else{
		$this->load->view('loginv2');
		}
	}
	public function addUser(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->User_model->add_user($_POST);
			redirect('welcome/verUsuarios');
			}else{
		redirect('welcome');
		}
	}
	public function deleteUser(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->User_model->delete_user($_GET['id']);
			redirect('welcome/verUsuarios');
		}else{
		redirect('welcome');
		}
	}

	public function addProv(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->Prov_model->add_prov($_POST);
			redirect('welcome/verProveedores');
			}else{
		redirect('welcome');
		}
	}
	public function deleteProv(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->Prov_model->delete_prov($_GET['id']);
			redirect('welcome/verProveedores');
		}else{
		redirect('welcome');
		}}

		//Método para actualizar al proveedor
	public function updateProv(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['prov']=$this->Prov_model->get_prov_detalle($_GET['id']);
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('modProv',$test);
		}else{
		redirect('welcome');
		}
	}
	public function updateProvTrue(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->Prov_model->update_prov($_GET['id'],$_POST);
			redirect('welcome/verProveedores');
		}else{
		redirect('welcome');
		}
	}
	//Métodos estructuras
	//Pantalla inicial
	public function estructuras(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$test['data']=$this->Estruc_model->get_estructuras();
			$this->load->view('menu',$test);
			$this->load->view('crudEstructuras',$test);
		}else{
		$this->load->view('loginv2');
		}}
//Agregar
public function addEstructuras(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->Estruc_model->add_estructura($_POST);
			redirect('welcome/estructuras');
			}else{
		redirect('welcome');
		}
	}
		//Vista a detalle de estructura seleccionada
		public function updateEstruc(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['prov']=$this->Estruc_model->get_detalle($_GET['id']);
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$this->load->view('modEstruc',$test);
		}else{
		redirect('welcome');
		}
	
	}
	// Actualizar estructura
	public function updateEstrucTrue(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->Estruc_model->update_estruc($_GET['id'],$_POST);
			redirect('welcome/estructuras');
		}else{
		redirect('welcome');
		}
	}
	//Eliminar Estructura
	public function deleteEstruc(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->Estruc_model->delete_estruc($_GET['id']);
			redirect('welcome/estructuras');
		}else{
		redirect('welcome');
		}
	}

	public function detalleSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']<=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			redirect('welcome/modSol?id='.$this->Solicitud_model->addMetadata($_POST));
		}else{
		redirect('welcome');
		}
	}
	public function modSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']<=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$use=$test['user'];
			$name=$use[0]->nombre." ".$use[0]->apellidos;
			$test['meta']=$this->Solicitud_model->getMetadata($_GET['id'],$name);
			$meta=$test['meta'];
			if($meta[0]->Nombre!=$name){//Validamos que accesa a solicitudes propias por url
				redirect('welcome/verMisSolicitudes');
			}
			$test['partidas']=$this->Solicitud_model->getPartidas($_GET['id']);
			$this->load->view('menu',$test);
			$this->load->view('modSol',$test);

		}else{
		redirect('welcome');
		}
	}
	public function seeSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$use=$test['user'];
			$name=$use[0]->nombre." ".$use[0]->apellidos;
			$test['meta']=$this->Solicitud_model->getMetadata($_GET['id'],$name);
			$meta=$test['meta'];
			$test['partidas']=$this->Solicitud_model->getPartidas($_GET['id']);
			$this->load->view('menu',$test);
			$this->load->view('seeSol',$test);

		}else{
		redirect('welcome');
		}
	}
	public function deleteSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']<=1){
			$this->Solicitud_model->deleteSol($_GET['id']);
			redirect('welcome/verMisSolicitudes');
		}else{
			redirect('welcome');
		}
	}
	public function cancelSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->Solicitud_model->cancelSol($_GET['id']);
			redirect('welcome/verSolicitudes');
		}else{
			redirect('welcome');
		}
	}
public function acceptSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->Solicitud_model->acceptSol($_GET['id']);
			redirect('welcome/verSolicitudes');
		}else{
			redirect('welcome');
		}
	}
public function paySol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$this->Solicitud_model->paySol($_GET['id']);
			redirect('welcome/pagarSolicitudes');
		}else{
			redirect('welcome');
		}
	}
	public function addPartida(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']<=1){
			$this->Solicitud_model->addPartida($_POST);
			$this->Solicitud_model->updateTotal($_POST['solicitudes_folio'],$_POST['total']);
			redirect('welcome/modSol?id='.$_POST['solicitudes_folio']);
		}else{
		redirect('welcome/');
		}
	}
	public function restSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']<=1){
			$this->Solicitud_model->restSol($_GET['id'],$_GET['to'],$_GET['part']);
			redirect('welcome/modSol?id='.$_GET['id']);
		}else{
		redirect('welcome/');
		}
	}
	public function pagarSolicitudes(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']<=1){
			$test['user']=$this->User_model->data($_SESSION['username']);
			$this->load->view('menu',$test);
			$test['data']=$this->Solicitud_model->get_solicitudPagar();
			$this->load->view('solPagar',$test);
		}else{
		redirect('welcome/');
		}
	}


	//Eucario
	public function addSol(){
		if(isset($_SESSION['username'])&&$_SESSION['rol']>=1){
			$test['user']=$this->User_model->data($_SESSION['username']);

    if ($_FILES['userfile']['error'] == UPLOAD_ERR_NO_FILE)
    {
    	echo "Error al subir la factura";
    }
    else
    {
      $this->cargar_factura();

      $this->Solicitud_model->fecha = $this->input->post('Fecha');
  	  $this->Solicitud_model->nombre = $this->input->post('Nombre');
      $this->Solicitud_model->area = $this->input->post('area');
      $this->Solicitud_model->comision = $this->input->post('denominacion_comision');
      $this->Solicitud_model->c_origen = $this->input->post('ciudad_origen');
      $this->Solicitud_model->e_origen = $this->input->post('estado_origen');
      $this->Solicitud_model->c_destino = $this->input->post('ciudad_destino');
  	  $this->Solicitud_model->e_destino = $this->input->post('estado_destino');
  	  //$this->solicitud_model->archivo = $this->input->post('userfile');
      $this->Solicitud_model->estatus = $this->estatus;

      $this->Solicitud_model->add_sol($_POST);
    }

			redirect('welcome/verSolicitudes');
			}else{
		redirect('welcome');
		}
	}



//funcion que guarda las facturas
function cargar_factura($id,$folio) {

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
		
		$this->Solicitud_model->emisor=$emisor;
		$this->Solicitud_model->receptor=$receptor;
		$this->Solicitud_model->total=$total;
		$this->Solicitud_model->folio=$uuid;

		//leer el xml y guardarlo como una cadena para evitar guardar los archivos en el servidor
		//$this->Solicitud_model->xml=$xml;

		$this->Solicitud_model->updatepartida($folio);
		$this->estatus=2;
		
      }
      else
      {
        //$this->session->set_flashdata('error', 'El Comprobante Fiscal es Invalido');
		//echo "El Comprobante Fiscal es Invalido";
		$this->Solicitud_model->emisor="";
		$this->Solicitud_model->receptor="";
		$this->Solicitud_model->total=0;
		$this->Solicitud_model->folio="";

		//leer el xml y guardarlo como una cadena para evitar guardar los archivos en el servidor
		//$this->Solicitud_model->xml=$xml;

		$this->Solicitud_model->updatepartida($folio);
		$this->estatus=1;
		
      }
}

else
      {
        //$this->session->set_flashdata('error', 'El XML no es un Comprobante Fiscal');
        //echo "El XML no es un Comprobante Fiscal";
        $this->estatus=0;
      }
      
      redirect('welcome/modSol?id='.$id.'');

    }


}

}
