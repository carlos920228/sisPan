<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
    <div class="container">
      <a class="btn-floating btn-large waves-effect waves-light red pulse btn modal-trigger" href="#modal1"><i class="material-icons">add</i></a>
<!--Modal para agregar usuario-->
  <div id="modal1" class="modal modal">
    <div class="modal-content">
      <h4 >Agregar Proveedor</h4>
      <div class="row">
        <form class="col s12" method="post" action='<?php echo base_url()."welcome/addProv";?>'>
          <div class="row modal-form-row">
            <div class="input-field col s6">
              <input id="razon_social" type="text" name="razon_social" class="validate" required>
              <label for="razon_social">Razon social</label>
            </div>
            <div class="input-field col s6">
              <input id="nombre_contacto" name="nombre_contacto" type="text" class="validate" required>
              <label for="nombre_contacto">Nombre del contacto</label>
            </div>
          </div>      
          <div class="row">
            <div class="input-field col s6">
              <input id="RFC" type="text" name="RFC" class="validate" required>
              <label for="RFC">RFC</label>
            </div>
            <div class="input-field col s6">
              <input id="banco" name="banco" type="text" class="validate" required>
              <label for="banco">Banco</label>
            </div>
          </div>   
          <div class="row">
            <div class="input-field col s6">
              <input id="clabe" type="text" name="clabe" class="validate" required>
              <label for="clabe">Clabe interbancaria</label>
            </div>
            <div class="input-field col s6">
              <input id="direccion" name="direccion" type="text" class="validate" required>
              <label for="direccion">Dirección</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s6">
              <input id="telefono" type="tel" name="telefono" class="validate" required>
              <label for="telefono">Teléfono</label>
            </div>
            <div class="input-field col s6">
              <input id="celular" name="celular" type="tel" class="validate" required>
              <label for="celular">Teléfono celular</label>
            </div>
          </div>  
          <div class="row">
            <div class="input-field col s3">
              <input id="correo" type="email" name="correo" class="validate" required>
              <label for="correo">Correo</label>
            </div>
            <div class="input-field col s3">
              <input id="ciudad" name="ciudad" type="text" class="validate" required>
              <label for="ciudad">Ciudad</label>
            </div>
            <div class="input-field col s3">
              <input id="estado" name="estado" type="text" class="validate" required>
              <label for="estado">Estado</label>
            </div>
            <div class="input-field col s3">
              <input id="id_ine" name="id_ine" type="text">
              <label for="id_ine">ID INE(Opcional)</label>
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
    <th>Razon social</th>
    <th>RFC</th>
    <th>Teléfono</th>
    <th>Correo</th>
    <th></th>
    <th></th>
  </tr>
  <?php
          foreach ($data->result() as $user) {
            echo "<tr>";
            echo "<td>$user->razon_social</td>";
            echo "<td>$user->RFC</td>";
            echo "<td>$user->telefono</td>";
            echo "<td>$user->correo</td>";
            echo '<td><a href="'.base_url().'welcome/deleteProv?id='.$user->idproveedor.'"<i class="material-icons red-text center">delete</i></td>';
            echo '<td><a href="'.base_url().'welcome/updateProv?id='.$user->idproveedor.'"<i class="material-icons red-text center">remove_red_eye</i></td>';
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
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems);
  });           
  </script>