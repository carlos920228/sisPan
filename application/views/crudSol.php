<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$fecha=date("Y-m-d");
?>
    <div class="container">
      <a class="btn-floating btn-large waves-effect waves-light red pulse btn modal-trigger" href="#modal1"><i class="material-icons">add</i></a>
<!--Modal para agregar usuario-->
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
              <input id="Nombre" name="Nombre" type="text" class="validate" required>
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
    <th>Fecha de Solicitud</th>
    <th>Nombre del Solicitante</th>
    <th>Area del Solicitante</th>
    <th>Comision</th>
    <th>Ciudad Origen</th>
    <th>Estado Origen</th>
    <th>Ciudad Destino</th>
    <th>Estado Destino</th>
    <th>Motivo</th>
    <th></th>
    <th></th>
  </tr>
  <?php
          foreach ($data->result() as $user) {
            echo "<tr>";
            echo "<td>$user->Fecha</td>";
            echo "<td>$user->Nombre</td>";
            echo "<td>$user->area</td>";
            echo "<td>$user->denominacion_comision</td>";
            echo "<td>$user->ciudad_origen</td>";
            echo "<td>$user->estado_origen</td>";
            echo "<td>$user->ciudad_destino</td>";
            echo "<td>$user->estado_destino</td>";

            if ($user->estatus==0)
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
            }

            
            echo '<td><a href="'.base_url().'welcome/deleteProv?id='.$user->folio.'"<i class="material-icons red-text center">delete</i></td>';
            echo '<td><a href="'.base_url().'welcome/updateProv?id='.$user->folio.'"<i class="material-icons red-text center">remove_red_eye</i></td>';
            echo "</tr>";
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
  });           
  </script>