<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
    <div class="container">
      <a class="btn-floating btn-large waves-effect waves-light red pulse btn modal-trigger" href="#modal1"><i class="material-icons">add</i></a>
<!--Modal para agregar usuario-->
  <div id="modal1" class="modal modal">
    <div class="modal-content">
      <h4 >Agregar Estructura</h4>
      <div class="row">
        <form class="col s12" method="post" action='<?php echo base_url()."welcome/addEstructuras";?>'>
          <div class="row modal-form-row">
            <div class="input-field col s6">
              <input id="estructura" type="text" name="estructura" class="validate" required>
              <label for="estructura">estructura</label>
            </div>
            <div class="input-field col s6">
              <input id="titular" name="titular" type="text" class="validate" required>
              <label for="nombre_contacto">Nombre del titular</label>
            </div>
            <div class="input-field col s6">
              <input id="presupuesto" name="presupuesto" type="number" class="validate" step="any" placeholder="0.00" min="0" required>
              <label for="presupuesto">Presupuesto</label>
            </div>
            <div class="input-field col s6">
              <input id="mensual" name="mensual" type="number" class="validate" step="any" placeholder="0.00" min="0" required>
              <label for="mensual">Mensual</label>
            </div>
          </div>      
          <div class="row">
            <div class="input-field col s6">
            <button class="btn waves-effect light-blue darken-2" type="submit">Guardar
              <i class="material-icons right">save</i>
            </button>
          </div>
          <div class="input-field col s6">
            <a class=" modal-action modal-close waves-effect light-blue darken-2 btn-flat">Cancelar
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
    <th>Estructura</th>
    <th>Nombre</th>
    <th>Presupuesto anual</th>
    <th>Presupuesto mensual</th>
    <th></th>
    <th></th>
  </tr>
  <?php
          foreach ($data->result() as $user) {
            echo "<tr>";
            echo "<td>$user->estructura</td>";
            echo "<td>$user->titular</td>";
            echo "<td><b>".number_format($user->presupuesto, 2, '.', ',')."</b></td>";
            echo "<td><b>".number_format($user->mensual, 2, '.', ',')."</b></td>";
            echo '<td><a href="'.base_url().'welcome/deleteEstruc?id='.$user->idestructuras.'"<i class="material-icons red-text center">delete</i></td>';
            echo '<td><a href="'.base_url().'welcome/updateEstruc?id='.$user->idestructuras.'"<i class="material-icons red-text center">remove_red_eye</i></td>';
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