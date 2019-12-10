<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$fecha=date("Y-m-d");
?> 
<title>Generar solicitud</title>
 <h5 class="center">Generar Solicitud de Viáticos</h5>
    <div class="container">
      <div class="row">
        <form class="col s12" method="post" action='<?php echo base_url()."welcome/detalleSol";?>' accept-charset="utf-8" enctype="multipart/form-data">
          <div class="row modal-form-row">
            <div class="input-field col s2">
              <input id="Fecha" type="date" name="Fecha" class="validate" value="<?php echo $fecha ?>" required readonly>
              <label for="Fecha">Fecha de Solicitud</label>
            </div>
            <div class="input-field col s4">
              <input id="Nombre" name="Nombre" type="text" class="validate"  value="<?php $use=$user[0];
               echo $use->nombre." ".$use->apellidos;?>"
              required readonly>
              <label for="Nombre">Nombre del Solicitante</label>
            </div>
            <div class="input-field col s3">
              <input id="area" type="text" name="area" class="validate" required>
              <label for="area">Departamento</label>
            </div>
            <div class="input-field col s3">
             <select id="activity" name="denominacion_comision" class="validate" required>
            <option value="" disabled selected>Selecciona una opción</option>
            <option value="Actividad ordinaria">Actividad ordinaria</option>
            <option value="Actividad especifica">Actividad especifica</option>
            <option value="Requiere vehículo">Requiere vehículo</option>
            </select>
            <label data-error="wrong" data-success="right" for="activity">Tipo actividad</label>
            </div>
          </div>       
          <div class="row">
            <div class="input-field col s3">
              <input id="ciudad_origen" type="text" name="ciudad_origen" class="validate" required>
              <label for="ciudad_origen">Ciudad Origen</label>
            </div>
            <div class="input-field col s3">
              <input id="estado_origen" name="estado_origen" type="text" class="validate" required>
              <label for="estado_origen">Estado Origen</label>
            </div>
            <div class="input-field col s3">
              <input id="ciudad_destino" type="text" name="ciudad_destino" class="validate" required>
              <label for="ciudad_destino">Ciudad Destino</label>
            </div>
            <div class="input-field col s3">
              <input id="estado_destino" name="estado_destino" type="text" class="validate" required>
              <label for="estado_destino">Estado Destino</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s3">
              <input id="area" type="text" name="secretaria" class="validate" required>
              <label for="area">Secretaría</label>
            </div>
            <div class="input-field col s6">
              <input id="motivo" name="motivo" type="text" class="validate" required>
              <label for="motivo">Actividad</label>
              </div>
               <input id="estado" name="estado" type="text" class="validate" required value="pendiente" hidden="">
               <input id="tipo_sol" name="tipo_sol" type="text" class="validate" required value="0" hidden="">
            </div>
              <div class="input-field col s6 right">
              <button class="btn waves-effect light-blue darken-2" type="submit">Continuar
              <i class="material-icons right">save</i>
            </button>
              </div>
            
          </div>
          </div>          
        </form>

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
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
  });           
  </script>