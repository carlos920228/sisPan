<?php
defined('BASEPATH') OR exit('No direct script access allowed');?>
<title>Ver solicitud</title>
<div class="container">
      <!--Modal para agregar partida-->
         <?php 
        if(empty($meta)){
          redirect('welcome/verSolicitudes');
        }
        ?>
      <div class="row">
          <div class="row modal-form-row">
            <div class="input-field col s2">
              <input id="Fecha" type="date" name="Fecha" 
              <?php $use=$meta[0];
               echo 'value="'.$use->Fecha.'"';?> readonly>
              <label for="Fecha">Fecha de Solicitud</label>
            </div>
            <div class="input-field col s4">
              <input id="Nombre" name="Nombre" type="text"
              <?php $use=$meta[0];
               echo 'value="'.$use->Nombre.'"';?> readonly>
              <label for="Nombre">Nombre del Solicitante</label>
            </div>
            <div class="input-field col s3">
              <input id="area" type="text" name="area"
              <?php $use=$meta[0];
               echo 'value="'.$use->area.'"';?> readonly>
              <label for="area">Area del Solicitante</label>
            </div>
            <div class="input-field col s3">
              <input id="denominacion_comision" name="denominacion_comision" type="text" 
              <?php $use=$meta[0];
               echo 'value="'.$use->denominacion_comision.'"';?> readonly>
              <label for="denominacion_comision">Comisión</label>
            </div>
          </div>       
          <div class="row">
            <div class="input-field col s3">
              <input id="ciudad_origen" type="text" name="ciudad_origen" 
              <?php $use=$meta[0];
               echo 'value="'.$use->ciudad_origen.'"';?> readonly>
              <label for="ciudad_origen">Ciudad Origen</label>
            </div>
            <div class="input-field col s3">
              <input id="estado_origen" name="estado_origen" type="text" 
              <?php $use=$meta[0];
               echo 'value="'.$use->estado_origen.'"';?> readonly>
              <label for="estado_origen">Estado Origen</label>
            </div>
            <div class="input-field col s3">
              <input id="ciudad_destino" type="tel" name="ciudad_destino"
              <?php $use=$meta[0];
               echo 'value="'.$use->ciudad_destino.'"';?> readonly>
              <label for="ciudad_destino">Ciudad Destino</label>
            </div>
            <div class="input-field col s3">
              <input id="estado_destino" name="estado_destino" type="text"
              <?php $use=$meta[0];
               echo 'value="'.$use->estado_destino.'"';?> readonly>
              <label for="estado_destino">Estado Destino</label>
            </div>
          </div>
          <div class="row">
             <div class="input-field col s3">
              <input id="estado_destino" name="estado_destino" type="text"
              <?php $use=$meta[0];
               echo 'value="'.$use->secretaria.'"';?> readonly>
              <label for="estado_destino">Secretaría</label>
            </div>
            <div class="input-field col s6">
              <input id="motivo" name="motivo" type="text" <?php $use=$meta[0];
               echo 'value="'.$use->motivo.'"';?> readonly>
              <label for="motivo">Motivo</label>            
            </div>
            <div class="input-field col s3">
              <input id="total" name="total" type="text" <?php $use=$meta[0];
               echo 'value="'.number_format($use->total, 2, '.', ',').'"';?> readonly>
              <label for="motivo">Total</label>            
            </div>
             
          </div>   
               <table class="responsive-table">
        <thead>
          <tr>
              <th>Descrpción</th>
              <th>Total</th>
              <th></th>
          </tr>
        </thead>
        <tbody>
         <?php
          foreach ($partidas->result() as $user) {
            echo "<tr>";
            echo "<td>$user->descripcion</td>";
            echo "<td><b>".number_format($user->total, 2, '.', ',')."</b></td>";

            if ($user->estatus==1)
            {
            echo '<td><a href="'.base_url().'welcome/downloadxml?id='.$user->idpartidas.'" target="_blank" title="Ver XML"><i class="material-icons blue-text center">remove_red_eye</i></a></td>';
            }
            else
            echo "<td></td>";

            echo "</tr>";
          }?> 
        </tbody>
      </table>  
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