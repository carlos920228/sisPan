<?php
class prov_model extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->load->database();
		
	}
	function get_prov(){
		$this->db->where('activo',1);
		$result= $this->db->get('proveedor');
		return $result;
		
	}
	function add_prov($data){
		If(!$this->db->insert('proveedor',$data)){
			return $error = $this->db->error();
			}
	}
	
	function delete_prov($id){
		$this->db->set('activo',0);
		$this->db->where('idproveedor',$id);
		$this->db->update('proveedor');
	}
	function get_prov_detalle($id){
		$this->db->where('idproveedor',$id);
		$result= $this->db->get('proveedor');
		return $result->result();;
		
	}
	function update_prov($id,$data){
		$this->db->where('idproveedor',$id);
		$this->db->update('proveedor', $data);		
	}
}?>