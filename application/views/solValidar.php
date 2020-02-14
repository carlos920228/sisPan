<?php
defined('BASEPATH') OR exit('No direct script access allowed');?>
<title>Modificar Solicitud</title>
<div class="container">

      <!--Modal para agregar partida-->
  <div id="myModal" class="modal modal">
    <div class="modal-content">
      <div class="row">
        <form class="col s12" method="post" action='<?php echo base_url()."welcome/verifyPartida";?>' accept-charset="utf-8" enctype="multipart/form-data">
          <div class="row modal-form-row">

          <input id="folio" type="hidden" name="folio" <?php $use=$meta[0]; echo 'value="'.$use->folio.'"';?>>
          <input id="partida" type="hidden" name="partida" value="">

            <div class="input-field col s4">
            <input id="concepto" name="concepto" type="text" class="validate" step="any" placeholder="0.00" min="1" required readonly><label for="concepto">Cantidad</label>
            </div>
            <div class="input-field col s4">
            <input id="total" name="total" type="number" class="validate" step="any" placeholder="0.00" min="1" required><label for="total">Solicitado</label>
            </div>
            <div class="input-field col s4">
            <input id="comprobado" name="comprobado" type="number" class="validate" step="any" value="0" placeholder="0.00" min="1" required><label for="comprobado">Comprobado</label>
            </div>
          </div> 

          <div class="row modal-form-row">
          <table class="responsive-table" id="tablacomprobantes">

          </table> 
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

      <div class="row">
          <div class="row modal-form-row">
          <div class="input-field col s3">
              <input id="Fecha" type="text" name="Fecha" 
              <?php $use=$meta[0];
               echo 'value="'.$use->folio.'"';?> readonly>
              <label for="Fecha">No Folio</label>
            </div>
            <div class="input-field col s3">
              <input id="Fecha" type="date" name="Fecha" 
              <?php $use=$meta[0];
               echo 'value="'.$use->Fecha.'"';?> readonly>
              <label for="Fecha">Fecha de Solicitud</label>
            </div>
            <div class="input-field col s6">
              <input id="Nombre" name="Nombre" type="text"
              <?php $use=$meta[0];
               echo 'value="'.$use->Nombre.'"';?> readonly>
              <label for="Nombre">Nombre del Solicitante</label>
            </div>
          </div>

          <div class="row">
          <div class="input-field col s3">
              <input id="area" type="text" name="area"
              <?php $use=$meta[0];
               echo 'value="'.$use->area.'"';?> readonly>
              <label for="area">Area</label>
            </div>
            <div class="input-field col s3">
              <input id="ciudad_origen" type="text" name="ciudad_origen" 
              <?php $use=$meta[0];
              if ($use->tipo_sol==0)
               {echo 'value="Viaticos"';}
               else {echo 'value="Reembolso"';} ?> readonly>
              <label for="tipo_sol">Tipo de Solicitud</label>
            </div>
            <div class="input-field col s3">
              <input id="fecha_inicio" type="date" name="fecha_inicio" 
              <?php $use=$meta[0];
               echo 'value="'.$use->fecha_inicio.'"';?> readonly>
              <label for="fecha_inicio">Fecha de Salida</label>
            </div>
            <div class="input-field col s3">
              <input id="fecha_fin" type="date" name="fecha_fin" 
              <?php $use=$meta[0];
               echo 'value="'.$use->fecha_fin.'"';?> readonly>
              <label for="fecha_fin">Fecha de Regreso</label>
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
            <div class="input-field col s9">
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
              <th>Descripción</th>
              <th></th>
              <th>Solicitado</th>
              <th>Documentado</th>
              <th>Comprobado</th>
              <th></th>
          </tr>
        </thead>
        <tbody>
         <?php
         $total=0;
         $subtotal=0;
         $use=$meta[0];
         $ok=0;
          foreach ($partidas->result() as $user) {
            if($user->estatus!='1'){
              $ok=0;
            }else{
              $ok=$user->estatus;
            }

            if ($user->estatus==0)
            {
              echo "<tr>";
              echo "<td>$user->descripcion</td>";
              echo "<td></td>";
              echo "<td>".number_format($user->total, 2, '.', ',')."</td>";
              echo "<td>".number_format($user->documentado, 2, '.', ',')."</td>";
              echo "<td>".number_format($user->comprobado, 2, '.', ',')."</td>";
              echo '<td align="center"><button type="button" class="btn-floating waves-effect waves-light blue modal-trigger" id="validar_partida" href="#myModal" value="'.$user->idpartidas.'%'.$user->descripcion.'%'.$user->total.'%'.$user->comprobado.'" title="Validar Partida"><i class="material-icons white-text center">done</i></td>';
            }

            else if ($user->estatus==1)
            {
              echo "<tr>";
              echo "<td>$user->descripcion</td>";
              echo "<td></td>";
              echo "<td>".number_format($user->total, 2, '.', ',')."</td>";
              echo "<td>".number_format($user->documentado, 2, '.', ',')."</td>";
              echo "<td>".number_format($user->comprobado, 2, '.', ',')."</td>";
              echo '<td align="center"><button type="button" class="btn-floating waves-effect waves-light blue modal-trigger" id="validar_partida" href="#myModal" value="'.$user->idpartidas.'%'.$user->descripcion.'%'.$user->total.'%'.$user->comprobado.'" title="Validar Partida"><i class="material-icons white-text center">done</i></td>';
            }

            else if ($user->estatus==2)
            {
              echo "<tr>";
              echo "<td>$user->descripcion</td>";
              echo "<td>Reembolso</td>";
              echo "<td>".number_format($user->total, 2, '.', ',')."</td>";
              echo "<td>".number_format($user->documentado, 2, '.', ',')."</td>";
              echo "<td>".number_format($user->comprobado, 2, '.', ',')."</td>";
              echo '<td align="center"><button type="button" class="btn-floating waves-effect waves-light blue modal-trigger" id="validar_partida" href="#myModal" value="'.$user->idpartidas.'%'.$user->descripcion.'%'.$user->total.'%'.$user->comprobado.'" title="Validar Partida"><i class="material-icons white-text center">done</i></td>';
            }

            else if ($user->estatus==3)
            {
              echo "<tr>";
              echo "<td>$user->descripcion</td>";
              echo "<td>Sin Uso</td>";
              echo "<td>".number_format($user->total, 2, '.', ',')."</td>";
              echo "<td></td>";
              echo '<td></td>';
              echo '<td></td>';
            }


            
            echo "</tr>";

            if ($user->estatus<3)
            {
              $total=$total+$user->total;
              $subtotal=$subtotal+$user->documentado;
            }

          }?> 
            <tr>
            <td><b>EJECUTADO </b></td>
            <td> </td>
            <td><b><?php echo number_format($total, 2, '.', ',') ?></b></td>
            <td><b><?php echo number_format($subtotal, 2, '.', ',') ?></b></td>
            </tr>
        </tbody>
      </table> 
      <br>
       
      </table>

      <div class="row">
            <div class="input-field col s3">
            <a href="<?php echo base_url() ?>welcome/terminateSol?id=<?php echo $use->folio ?>" class="btn" onclick="if (confirm('¿Desea Finalizar esta Solicitud?')){return true;}else{event.stopPropagation(); event.preventDefault();};">Finalizar</a>
            </div>
            <div class="input-field col s3">
            <a href="<?php echo base_url() ?>welcome/viewpdfcomp?id=<?php echo $use->folio ?>&to=1" target="_blank" class="btn"><i class="material-icons left">cloud</i>Ver PDF</a>
            </div>
            <div class="input-field col s4">
            <a href="<?php echo base_url() ?>welcome/downloadxml?id=<?php echo $use->folio ?>" class="btn"><i class="material-icons left">cloud_download</i>Descargar XML</a>
            </div>
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
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
  });           
  </script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js"></script>

<script type="text/javascript">

var dominio = "<?php echo base_url();?>";

$('body').on('click','#validar_partida', function() {

  var datos = $(this).val().split('%');

  $('#partida').val(datos[0]);
  $('#concepto').val(datos[1]);
  $('#total').val(datos[2]);
  $('#comprobado').val(datos[3]);

  $.post(dominio+"welcome/viewComprobantes/"+datos[0], function(data) {
            $("#tablacomprobantes").html(data);
            });
});

$('body').on('click','#item_xml', function() {

var idd = $(this).val().split('#');
var aux= $('#comprobado').val();

if($(this).prop("checked") == true)
{
  $('#comprobado').val((parseFloat(aux) + parseFloat(idd[1])).toFixed(2));
}

else if($(this).prop("checked") == false)
  {
    $('#comprobado').val((parseFloat(aux) - parseFloat(idd[1])).toFixed(2));
  }

});

</script>

