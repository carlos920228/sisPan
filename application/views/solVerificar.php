<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$fecha=date("Y-m-d");
?>
<title>Administración solicitudes</title>
    <div class="container">
     <!-- <a class="btn-floating btn-large waves-effect waves-light red pulse btn modal-trigger" href="#modal1"><i class="material-icons">add</i></a>
Modal para agregar usuario-->
  <div id="modal1" class="modal modal">
    <div class="modal-content">
      <h4 >Agregar Solicitud</h4>
      <div class="row">
        <form class="col s12" method="post" action='<?php echo base_url()."welcome/addSol";?>' accept-charset="utf-8" enctype="multipart/form-data">
          <div class="row modal-form-row">
            <div class="input-field col s6">
              <input id="Fecha" type="date" name="Fecha" class="validate" value="<?php echo $fecha ?>" required readonly>
              <label for="Fecha">Fecha de Solicitud</label>
            </div>
            <div class="input-field col s6">

              <input id="Nombre" name="Nombre" type="text" class="validate"  value="<?php $use=$user[0];
               echo $use->nombre." ".$use->apellidos;?>"
              required readonly>
              <label for="Nombre">Nombre del Solicitante</label>
            </div>
          </div>      
          <div class="row">
            <div class="input-field col s6">
              <input id="area" type="text" name="area" class="validate" required>
              <label for="area">Area del Solicitante</label>
            </div>
            <div class="input-field col s6">
              <input id="denominacion_comision" name="denominacion_comision" type="text" class="validate" required>
              <label for="denominacion_comision">Comisión</label>
            </div>
          </div>   
          <div class="row">
            <div class="input-field col s6">
              <input id="ciudad_origen" type="text" name="ciudad_origen" class="validate" required>
              <label for="ciudad_origen">Ciudad Origen</label>
            </div>
            <div class="input-field col s6">
              <input id="estado_origen" name="estado_origen" type="text" class="validate" required>
              <label for="estado_origen">Estado Origen</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s6">
              <input id="ciudad_destino" type="tel" name="ciudad_destino" class="validate" required>
              <label for="ciudad_destino">Ciudad Destino</label>
            </div>
            <div class="input-field col s6">
              <input id="estado_destino" name="estado_destino" type="text" class="validate" required>
              <label for="estado_destino">Estado Destino</label>
            </div>
          </div>  
          <div class="row">
            <div class="input-field col s12">
              <input type='file' class='filestyle' data-buttonName='btn btn-primary' data-buttonBefore='true' data-buttonText='Seleccionar Factura' name='userfile' id="factura_recurso" size='20' accept='.xml'/>
            </div>


          </div> 

          <div class="row">
            <div class="input-field col s6">
            <button class="btn waves-effect light-blue darken-2" type="submit">Guardar
              <i class="material-icons right">save</i>
            </button>
          </div>
          <div class="input-field col s6">
            <a class=" modal-action modal-close waves-effect light-blue darken-2 btn-flat">Cerrar
              <i class="material-icons right">close</i>
            </a>
          </div>
          </div>          
        </form>
      </div>
    </div>
  </div>
<!-- Tabla de usuarios-->
<table>
  <tr>
    <th>Fecha Solicitud</th>
    <th>Nombre del Solicitante</th>
    <th>Area del Solicitante</th>
    <th>Motivo</th>
    <th>Total</th>
    <th>Tipo</th>
    <th colspan="3" class="center">Acción</th>
  </tr>
  <?php
          foreach ($data->result() as $user) {
            echo "<tr>";
            echo "<td>$user->Fecha</td>";
            echo "<td>$user->Nombre</td>";
            echo "<td>$user->area</td>";
            echo "<td>$user->motivo</td>";
            echo "<td><b>".number_format($user->total, 2, '.', ',')."<b></td>";
            switch ($user->tipo_sol) {
              case '0':
                echo "<td>Viáticos</td>";
                break;
              case '1':
                echo "<td>Proveedor</td>";
                break;
              case '2':
                echo "<td>Estructura</td>";
                break;
              default:
                # code...
                break;
            }
            /*if ($user->estatus==0)
            {
              echo "<td>XML Invalido</td>";
            }

            else if ($user->estatus==1)
            {
              echo "<td>Factura Invalida</td>";
            }

            else
            {
              echo "<td>Factura Valida</td>";
            }*/
            echo '<td><a href="'.base_url().'welcome/detalleSol?id='.$user->folio.'" title="Ver Solicitud"><i class="material-icons blue-text center">remove_red_eye</i></a></td>';
            echo '<td><a href="'.base_url().'welcome/viewpdf?id='.$user->folio.'" title="Descargar Solicitud"><i class="material-icons blue-text center">event_note</i></a></td>';
            echo '<td><a href="'.base_url().'welcome/downloadxml?id='.$user->folio.'" title="Descargar Comprobantes"><i class="material-icons blue-text center">cloud_download</i></a></td>';
          }?> 
</table>  
    </div>
</body>

    <!-- Compiled and minified JavaScript -->
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems);
     var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems);
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems);
  });           
  </script>