<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Solicitudes extends CI_Controller {

function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('User_model');
		$this->load->model('Estruc_model');
		$this->load->model('Solicitud_model');
		$this->resultado="";
		
	}
	
//Función que muestra todas las solicitudes finalizadas
public function finalizadas(){
	if($_SESSION['rol']>=1){//Si es administrador
		$test['user']=$this->User_model->data($_SESSION['username']);
		$use=$test['user'];
		$test['finalizadas']=$this->Solicitud_model->get_finalizadas();
		$this->load->view('menu',$test);
		$this->load->view('/solicitudes/verFinalizadas',$test);
	}else{
		redirect('welcome');
	}
}
//Función que muestra todas las solicitudes con incidencia
public function incidencias(){
	if($_SESSION['rol']>=1){//Si es administrador
		$test['user']=$this->User_model->data($_SESSION['username']);
		$use=$test['user'];
		$test['incidencias']=$this->Solicitud_model->get_incidencias();
		$this->load->view('menu',$test);
		$this->load->view('/solicitudes/verIncidencias',$test);
	}else{
		redirect('welcome');
	}
}
//Funcion que vizualiza la informacion de una solicitud
public function detalleSol()
{
	if(isset($_SESSION['username'])&&$_SESSION['rol']>=1)
	{
		$test['user']=$this->User_model->data($_SESSION['username']);
		$use=$test['user'];
		$name=$use[0]->nombre." ".$use[0]->apellidos;
		$test['meta']=$this->Solicitud_model->getMetadata($_GET['id'],$name);
		$meta=$test['meta'];
		$test['partidas']=$this->Solicitud_model->getPartidas($_GET['id']);
		$this->load->view('menu',$test);
		$this->load->view('/solicitudes/verSolicitud',$test);
	}
	else
	{
	redirect('welcome');
	}
}
// Imprime una solicitud en pdf
public function viewpdf(){
	
	$test=$this->Solicitud_model->getinfo($_GET['id']);
	$test2=$this->Solicitud_model->getPartidas($_GET['id']);

	$this->load->library('pdf');

	$aux="";
	$tipo="";

	if ($test->tipo_sol==0)
		{$tipo="Viaticos";}
	else
	{$tipo="Reembolso";}

	if ($_GET['to']==0)
	{
	$firma="";
	}
	else
		{$firma='';}

	foreach ($test2->result() as $info) {
		$aux = $aux.'<tr><td>'.$info->descripcion.'</td><td>'.number_format($info->total, 2, ".", ",").'</td></tr>'; 
	}

	$html = '<!doctype html>
	<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<title>Solicitud de Viaticos</title>
	<style type="text/css">
    input[type="text"]{
        border:none;
		border-bottom:2px solid #000000;
		width: 100%;
		height: 22px;
		font-size: larger;
    }
.minusculas{
	text-transform:lowercase;

}	
.mayusculas{
	text-transform:uppercase;
	color:red;
}	
	</style>
  </head>
  <body>

 

  <div class=”container-fluid”>
  <div class="row">

  <h1 class="text-center bg-info">Solicitud de Viaticos</h1>

  <div class="panel panel-default">
  <div class="panel-body">

  <div class="form-group row">
  <div class="col-xs-2">
    <label for="ex1">Folio</label>
    <input class="form-control input-sm" id="ex1" type="text" value="'.$test->folio.'">
  </div>
  <div class="col-xs-3">
    <label for="ex2">Fecha de Solicitud</label>
    <input class="form-control input-sm" id="ex2" type="text" size="50" value="'.$test->Fecha.'">
  </div>
  <div class="col-xs-5">
    <label for="ex3">Nombre del Solicitante</label>
    <input class="form-control input-sm" id="ex3" type="text" value="'.$test->Nombre.'">
  </div>
</div>

<div class="form-group row">
<div class="col-xs-4">
  <label for="ex1">Area del Solicitante</label>
  <input class="form-control input-sm" id="ex1" type="text" value="'.$test->area.'">
</div>
<div class="col-xs-4">
  <label for="ex2">Tipo de Solicitud</label>
  <input class="form-control input-sm" id="ex2" type="text" value="'.$tipo.'">
</div>
<div class="col-xs-2"><b>
  <label for="estatus">Estatus</label>
  <input class="form-control input-sm mayusculas" id="estatus" type="text" value="'.$test->estado.'">
</b>
</div>
</div>

<div class="form-group row">
<div class="col-xs-3">
  <label for="ex1">Ciudad Origen</label>
  <input class="form-control input-sm" id="ex1" type="text" value="'.$test->ciudad_origen.'">
</div>
<div class="col-xs-2">
  <label for="ex2">Estado Origen</label>
  <input class="form-control input-sm" id="ex2" type="text" value="'.$test->estado_origen.'">
</div>
<div class="col-xs-3">
  <label for="ex3">Ciudad Destino</label>
  <input class="form-control input-sm" id="ex3" type="text" value="'.$test->ciudad_destino.'">
</div>
<div class="col-xs-2">
  <label for="ex3">Estado Destino</label>
  <input class="form-control input-sm" id="ex3" type="text" value="'.$test->estado_destino.'">
</div>
</div>

<div class="form-group row">
<div class="col-xs-9">
  <label for="ex2">Motivo</label>
  <input class="form-control input-sm" id="ex2" type="text" value="'.$test->motivo.'">
</div>
<div class="col-xs-2">
  <label for="ex3">Total</label>
  <input class="form-control input-sm" id="ex3" type="text" value="'.number_format($test->total, 2, '.', ',').'">
</div>
</div>


<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th>Descripción</th>
            <th>Total</th>
        </tr>
    </thead>
	<tbody>
'.$aux.'
<tbody>
</table>


</div>
</div>
</div>
</div>

'.$firma.'



</body>
</html>
	';

    $this->pdf->generate($html, 'Solicitud de Viaticos No '.$test->folio, true, 'Letter', 'portrait');
		
}
}
