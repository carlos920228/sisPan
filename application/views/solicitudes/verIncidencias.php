<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<title>Incidencias</title>
  <div class="container">
    <h3 class="center">Solicitudes con incidencias</h3>
  <div id="test-swipe-1" class="col s12">
    <table>
        <tr>
        <th>Fecha</th>
        <th>Total</th>
        <th>Motivo</th>
        <th>Nombre</th>
        <th>Departamento</th>
      </tr>
      <?php
          foreach ($incidencias->result() as $user) {
            echo "<tr>";
            echo "<td>$user->Fecha</td>";
            echo "<td><b>".number_format($user->total, 2, '.', ',')."<b></td>";
            echo "<td>$user->motivo</td>";
            echo "<td>$user->Nombre</td>";
            echo "<td>$user->area</td>";
            echo '<td><a href="'.base_url().'Solicitudes/detalleSol?id='.$user->folio.'" title="Modificar Solicitud"><i class="material-icons blue-text center">remove_red_eye</i></a></td>';
            
            echo "</tr>";
          }?>
    </table>  
</div>
</div>
</body>

    <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
  </script>

  <script>
  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.sidenav');
    var el = document.querySelectorAll('.tabs');
    var instances = M.Sidenav.init(elems);
    var instance = M.Tabs.init(el);
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems);
  });    
  </script>