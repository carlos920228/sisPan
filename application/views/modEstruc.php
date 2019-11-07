<div class="container">
<h4 >Agregar Proveedor</h4>
      <div class="row">
        <form class="col s12" method="post" action='<?php
        $use=$prov[0];
        echo base_url()."welcome/updateEstrucTrue?id=$use->idestructuras";?>'>
          <div class="row modal-form-row">
            <div class="input-field col s6">
              <input id="estructura" type="text" name="estructura" class="validate" required
              <?php $use=$prov[0];
               echo 'value="'.$use->estructura.'"';?>
               >
              <label for="estructura">estructura</label>
            </div>
            <div class="input-field col s6">
              <input id="titular" type="text" name="titular" class="validate"  required
                <?php $use=$prov[0];
               echo 'value="'.$use->titular.'"';?>
              >
              <label for="titular">titular</label>
            </div>
          </div>      
          <div class="row">
            <div class="input-field col s6">
              <input id="presupuesto" name="presupuesto" type="number" class="validate" step="any" placeholder="0.00" min="0" required
                <?php $use=$prov[0];
               echo 'value="'.$use->presupuesto.'"';?>
              >
              <label for="banco">Presupuesto anual</label>
            </div>
            <div class="input-field col s6">
              <input id="mensual" name="mensual" type="number" class="validate" step="any" placeholder="0.00" min="0" required
                <?php $use=$prov[0];
               echo 'value="'.$use->mensual.'"';?>
              >
              <label for="mensual">Presupuesto mensual</label>
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