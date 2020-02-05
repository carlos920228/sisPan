<?php
class Solicitud_model extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->load->database();
		
	}
	function get_solicitud(){
        $this->db->where('estado','pendiente');
		$result= $this->db->get('solicitudes');
		return $result;
		
	}
    function get_solUserPenWait($name,$estado){
        $this->db->where('estado',$estado);
        $this->db->where('nombre',$name);
        $this->db->order_by('folio', 'DESC');
        $result= $this->db->get('solicitudes');
        return $result; 
    }
    function getMetadata($id,$nombre){
        $this->db->where('folio',$id);
        $result= $this->db->get('solicitudes');
        return $result->result(); 
    }

    //Consulta que obtiene los datos de una solicitud
    function getinfo($id){
        $this->db->where('folio',$id);
        $result= $this->db->get('solicitudes');
        return $result->row(); 
    }

    function getPartidas($id){
        $this->db->where('solicitudes_folio',$id);
        $this->db->order_by('estatus', 'ASC');
        $this->db->order_by('descripcion', 'ASC');
        $result= $this->db->get('partidas');
        return $result; 
    }

    function getComprobantes($id){
        $this->db->where('idpartida',$id);
        $result= $this->db->get('comprobantes');
        return $result; 
    }

    function addPartida($data){
        If(!$this->db->insert('partidas',$data)){
            return $error = $this->db->error();
            }
    }

//Funcion que agrega partidas extras en la vista de comprobacion de solicitud de viaticos
function addPartidacomp($data){
    $this->db->trans_begin();

    $this->db->set('descripcion', $data['descripcion']);
    $this->db->set('total', $data['total']);
    $this->db->set('solicitudes_folio', $data['solicitudes_folio']);
    $this->db->set('estatus', 1);

    $bandera = $this->db->insert('partidas');

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
        }
    else{
        $this->db->trans_commit();
        return true;
        }
}

//Funcion que verifica si todos los documentos son validos para enviar la solicitud a finalizada o a incidencia
function checkIncidencia($folio)
{
    $this->db->select_avg('estatus');
    $this->db->where('folio',$folio);
    $result = $this->db->get('comprobantes');
    return $result->row(); 
}

//Funcion que termina la validacion de la partida en el proceso de validacion de documentos
function terminatePartida($partida,$total,$comprobado,$folio)
{
    $this->db->trans_begin();

    $this->db->set('total',$total);
    $this->db->set('comprobado',$comprobado);
    $this->db->where('idpartidas',$partida);
    $this->db->update('partidas');

    $this->db->set('estatus',1);
    $this->db->where('idpartida',$partida);
    $this->db->update('comprobantes');

    foreach($folio as $value)
    {
        $s = explode("#",$value);
        $this->db->set('estatus',3);
        $this->db->where('foliosat',$s[0]);
        $this->db->update('comprobantes');
    }

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
    }else{
        $this->db->trans_commit();
        return true;
    }
}

//Funcion que finaliza la solicitud comprobada y la envia a finalizada o incidencia
function terminateSolicitud($folio,$aux)
{
    $this->db->trans_begin();
    $estado="";

    if ($aux==0)
    {  
        $estado="incidencia";
    }
    else
    {
        $estado="finalizada";
    }

    $this->db->set('estado',$estado);
    $this->db->where('folio',$folio);
    $this->db->update('solicitudes');

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
    }else{
        $this->db->trans_commit();
        return true;
    }
}

    function updateTotal($id,$sub){
        $query = $this->db->query("UPDATE solicitudes SET total=total+$sub WHERE folio=$id");
    }


    function restSol($sol,$total,$partida){
         $query = $this->db->query("UPDATE solicitudes SET total=total-$total WHERE folio=$sol");
         $this->db->where('idpartidas', $partida);
         $this->db->delete('partidas');
    }


//Funcion que elimina la partida agregada durante la comprobacion
function restSolcomp($partida)
{
    $this->db->where('idpartidas', $partida);
    $this->db->delete('partidas');
    $this->db->where('idpartida', $partida);
    $this->db->delete('comprobantes');
}

    function addMetadata($data){
        If(!$this->db->insert('solicitudes',$data)){
            return $error = $this->db->error();
            }
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }

    function deleteSol($id){
        $this->db->set('estado',0);
        $this->db->where('folio',$id);
        $this->db->where('estado','pendiente');
        $this->db->update('solicitudes');
    }
     function cancelSol($id){
        $this->db->set('estado','cancelada');
        $this->db->where('folio',$id);
        $this->db->where('estado','pendiente');
        $this->db->update('solicitudes');
    }
    function acceptSol($id){
        $this->db->set('estado','aceptada');
        $this->db->where('folio',$id);
        $this->db->where('estado','pendiente');
        $this->db->update('solicitudes');
    }
    function paySol($id){
        $this->db->set('estado','pagada');
        $this->db->where('folio',$id);
        $this->db->where('estado','aceptada');
        $this->db->update('solicitudes');
    }
	public function add_sol(){
    $this->db->trans_begin();
    $this->db->set('Fecha', $this->fecha);
    $this->db->set('Nombre', $this->nombre);
    $this->db->set('area', $this->area);
    $this->db->set('denominacion_comision', $this->comision);
    $this->db->set('ciudad_origen', $this->c_origen);
    $this->db->set('estado_origen', $this->e_origen);
    $this->db->set('ciudad_destino', $this->c_destino);
    $this->db->set('estado_destino', $this->e_destino);
    $this->db->set('estatus', $this->estatus);

    $bandera = $this->db->insert('solicitudes');

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
        }
    else{
        $this->db->trans_commit();
        return true;
        }
}
//get_solicitudPagar
function get_solicitudPagar(){
        $this->db->where('estado','aceptada');
        $result= $this->db->get('solicitudes');
        return $result;
        
    }



//get_solicitudPagar
public function get_solicitudVerificar(){
    
    $this->db->where('estado','verificar');
    $result= $this->db->get('solicitudes');
    return $result;
    
}

//
function validatePartida($folio){
    $this->db->where('solicitudes_folio',$folio);
    $this->db->order_by('estatus', 'DESC');
    $result= $this->db->get('partidas');
    return $result->result(); 
}


//Consulta que revisa si el xml ya fue subido por alguien mas
 public function checkxml($foliosat){
        $this->db->where('foliosat',$foliosat);
        $result= $this->db->get('comprobantes');
        return $result->row(); 
}

//Consulta que obtiene los datos de la persona que ya tiene en uso un xml
public function checksolicitud($folio){
    $this->db->where('folio',$folio);
    $result= $this->db->get('solicitudes');
    return $result->row(); 
}

//Funcion que cambia el estatus de la solicitud a verificar para validar que los xml subidos sean correctos
public function verifySol($id){
    $this->db->trans_begin();

    $this->db->set('estado','verificar');
    $this->db->where('folio',$id);
    $this->db->where('estado','pagada');
    $this->db->update('solicitudes');

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
    }else{
        $this->db->trans_commit();
        return true;
    }
}

//Funcion para no utilizar una partida
public function notusePartida($idpartida){
    $this->db->trans_begin();

    $this->db->set('documentado',0);
    $this->db->set('estatus',3);
    $this->db->where('idpartidas',$idpartida);
    $this->db->update('partidas');

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
    }else{
        $this->db->trans_commit();
        return true;
    }
}

//Funcion que reembolsa una partida
public function refundPartida($idpartida){
    $this->db->trans_begin();

    $this->db->set('documentado',0);
    $this->db->set('estatus',2);
    $this->db->where('idpartidas',$idpartida);
    $this->db->update('partidas');

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
    }else{
        $this->db->trans_commit();
        return true;
    }
}

//Funcion que agrega a la partida los datos del xml validado
public function updatepartida($folio,$idpartida){
    $this->db->trans_begin();

    $this->db->set('folio', $folio);
    $this->db->set('idpartida', $idpartida);
    $this->db->set('emisor', $this->emisor);
    $this->db->set('receptor', $this->receptor);
    $this->db->set('totalfactura', $this->total);
    $this->db->set('foliosat', $this->folio);
    $this->db->set('xml', $this->xml);
    $this->db->set('estatus', $this->estatus);

    $this->db->insert('comprobantes');

    $this->db->set('documentado', 'documentado + '.$this->total.'', FALSE);
    $this->db->where('idpartidas', $idpartida);
    $this->db->update('partidas');

    //$this->db->where('idpartidas', $id);
    //$this->db->update('partidas');

    if ($this->db->trans_status() === FALSE){
        $this->db->trans_rollback();
        return false;
    }else{
        $this->db->trans_commit();
        return true;
        }
}


}?>