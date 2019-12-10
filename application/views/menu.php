<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<style>
     #map {
        width: 100%;
        height: 400px;
        background-color: grey;
      }
body { background-color:#DAE4F5; }
.login{
    background:rgba(0, 0, 0, .6);
  }
  .login input{
    font-size: 20px !important;
    color: #ccc;
    
  }
  .login label{
    font-size: 15px;
    color: #ccc;
  }
  .login button:hover{
    padding: 0px 40px; 
}
.hero-image {
  
  height:750px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;

}
.map{
      display: flow-root;
}
.material-icons.green600{ color:blue; }
header, main, footer ,body{
      padding-left: 200px;
    }
.material-icons.yellow600{ 
	float: left;
	padding-right:3px;
	color: #29e319; }
header, main, footer ,body{
      padding-left: 200px;
    }
    @media only screen and (max-width : 992px) {
      header, main, footer, body {
        padding-left: 0;
      }
    }
</style>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
          <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>
<div class="hero-image">
    <div>
    	   <ul id="menu-side" class="sidenav sidenav-fixed blue darken-4">
           <li>
            <div class="user-view">
                <div class="background indigo darken-4">
                <a href="<?php echo base_url()?>">
                <!--<img src="https://img.freepik.com/vector-gratis/arbol-deja-frontera-fondo-defocused-abstracto-verde_33099-1423.jpg?size=626&ext=jpg"></a>
              -->
              </div>
               <a href="<?php echo base_url()?>"><img class="circle" src="https://upload.wikimedia.org/wikipedia/commons/6/62/Partido_Autonomista_Nacional_2019.png"></a>
               <a href="#name"><span class="black-text name">Bienvenido <?php $use=$user[0];
               echo $use->nombre." ".$use->apellidos;?></span></a>
           </li>
           
           <li><a class='dropdown-trigger' href='#' data-target='dropdown1'><i class="small material-icons white-text">add_shopping_cart</i>Generar Solicitud</a></li>
           <!-- Dropdown Structure -->
            <ul id='dropdown1' class='dropdown-content blue'>
            <li><a href="#">Proovedores</a></li>
            <li><a href='<?php echo base_url()."welcome/generarSolicitud";?>'>Viáticos</a></li>
            <li><a href="#!">Estructura</a></li>
            </ul>
           <li><a href='<?php echo base_url()."welcome/verMisSolicitudes";?>'><i class="small material-icons white-text">remove_red_eye</i>Ver mis solicitudes</a></li>
           <?php 
           if($_SESSION['rol']==1){
            //Menú para administrar solicitudes
            echo '<li><a class="dropdown-trigger" href="#" data-target="dropdown2"><i class="small material-icons white-text">account_balance_wallet</i>Solicitudes</a></li>';
            echo '<ul id="dropdown2" class="dropdown-content blue">';
            echo '<li><a href="'.base_url().'welcome/verSolicitudes">Pendientes de aprobar</a></li>';
            echo '<li><a href="'.base_url().'welcome/pagarSolicitudes">Pendientes de pagar</a></li>';
            echo '<li><a href="'.base_url().'welcome/verificarComprobacion">Verificar comprobación</a></li>';
            echo "</ul>";
            //--------------------------
            echo '<li><a href="'.base_url().'welcome/verProveedores"><i class="small material-icons white-text">payment</i>Proveedores</a></li>';
            echo '<li><a href="'.base_url().'welcome/verUsuarios"><i class="small material-icons white-text">account_box</i>Usuarios</a></li>';
            echo '<li><a href="'.base_url().'welcome/estructuras"><i class="small material-icons white-text">account_balance</i>Estructuras</a></li>';            
            }
           ?>
            <li><a href='<?php echo base_url()."welcome/exit";?>'><i class="small material-icons white-text">announcement</i>Salir</a></li>
        </ul>
    	<a href="#" class="sidenav-trigger" data-target="menu-side"><i class="medium material-icons green600">menu</i></a>

    </div>
