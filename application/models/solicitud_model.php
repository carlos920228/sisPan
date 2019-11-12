<?php
class solicitud_model extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->load->database();
		
	}
	function get_solicitud(){
		$result= $this->db->get('solicitudes');
		return $result;
		
	}
    function get_solUserPenWait($name){
        $this->db->where('estado','pendiente');
        $this->db->where('nombre',$name);
        $this->db->order_by('folio', 'DESC');
        $result= $this->db->get('solicitudes');
        return $result; 
    }
    function getMetadata($id){
        $this->db->where('folio',$id);
        $result= $this->db->get('solicitudes');
        return $result->result(); 
    }
    function addMetadata($data){
        If(!$this->db->insert('solicitudes',$data)){
            return $error = $this->db->error();
            }
        $insert_id = $this->db->insert_id();
        return  $insert_id;
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



}?>