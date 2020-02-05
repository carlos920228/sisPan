<div class="container">
  <title>Modificar proveedor</title>
<h4 >Modificar Proveedor</h4>
      <div class="row">
        <form class="col s12" method="post" action='<?php
        $use=$prov[0];
        echo base_url()."welcome/updateProvTrue?id=$use->idproveedor";?>'>
          <div class="row modal-form-row">
            <div class="input-field col s7">
              <input id="razon_social" type="text" name="razon_social" class="validate" required
              <?php $use=$prov[0];
               echo 'value="'.$use->razon_social.'"';?>
               >
              <label for="razon_social">Razon social</label>
            </div>
            <div class="input-field col s5">
              <input id="RFC" type="text" name="RFC" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->RFC.'"';?>
              >
              <label for="RFC">RFC</label>
            </div>
          </div>      
          <div class="row">
            <div class="input-field col s6">
              <input id="banco" name="banco" type="text" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->banco.'"';?>
              >
              <label for="banco">Banco</label>
            </div>
            <div class="input-field col s6">
              <input id="nombre_contacto" name="nombre_contacto" type="text" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->nombre_contacto.'"';?>
              >
              <label for="nombre_contacto">Nombre del contacto</label>
            </div>
          </div>   
          <div class="row">
            <div class="input-field col s6">
              <input id="clabe" type="text" name="clabe" class="validate" required
              <?php $use=$prov[0];
               echo 'value="'.$use->clabe.'"';?>>
              <label for="clabe">Clabe interbancaria</label>
            </div>
            <div class="input-field col s6">
              <input id="direccion" name="direccion" type="text" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->direccion.'"';?>
              >
              <label for="direccion">Dirección</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s4">
              <input id="telefono" type="tel" name="telefono" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->telefono.'"';?>
              >
              <label for="telefono">Teléfono</label>
            </div>
            <div class="input-field col s4">
              <input id="celular" name="celular" type="tel" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->celular.'"';?>
              >
              <label for="celular">Teléfono celular</label>
            </div>
            <div class="input-field col s4">
              <input id="correo" type="email" name="correo" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->correo.'"';?>
              >
              <label for="correo">Correo</label>
            </div>
          </div>  
          <div class="row">
            
            <div class="input-field col s4">
              <input id="ciudad" name="ciudad" type="text" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->ciudad.'"';?>
              >
              <label for="ciudad">Ciudad</label>
            </div>
            <div class="input-field col s4">
              <input id="estado" name="estado" type="text" class="validate" required
                <?php $use=$prov[0];
               echo 'value="'.$use->estado.'"';?>
              >
              <label for="estado">Estado</label>
            </div>
            <div class="input-field col s4">
              <input id="id_ine" name="id_ine" type="text"
                <?php $use=$prov[0];
               echo 'value="'.$use->id_ine.'"';?>
              >
              <label for="id_ine">ID INE(Opcional)</label>
            </div>
          </div> 
          <div class="row">
            <div class="input-field col s6">
            <button class="btn waves-effect light-red darken-2" type="submit">Actualizar
              <i class="material-icons right">save</i>
            </button>
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
  });           
  </script>