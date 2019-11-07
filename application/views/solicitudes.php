<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
  <div class="container ">
   <ul id="tabs tabs-fixed-width tab-demo z-depth-1" class="tabs">
    <li class="tab col s3 grey lighten-1"><a class="active black-text" href="#test-swipe-1" >Pendientes</a></li>
    <li class="tab col s3 grey lighten-1"><a  href="#test-swipe-2" class="black-text">Aprobadas</a></li>
    <li class="tab col s3 grey lighten-1"><a href="#test-swipe-3"class="black-text">Pagadas</a></li>
    <li class="tab col s3 grey lighten-1"><a href="#test-swipe-4"class="black-text">Comprobar</a></li>
    <li class="tab col s3 grey lighten-1"><a href="#test-swipe-5"class="black-text">Comprobadas</a></li>
    <li class="tab col s3 grey lighten-1"><a href="#test-swipe-6"class="red-text">Canceladas</a></li>
  </ul>
  <div id="test-swipe-1" class="col s12">
    <table>
        <tr>
        <th>Fecha</th>
        <th>Total</th>
        <th>Motivo</th>
        <th></th>
      </tr>
      <?php
          foreach ($pendientes->result() as $user) {
            echo "<tr>";
            echo "<td>$user->Fecha</td>";
            echo "<td><b>".number_format($user->total, 2, '.', ',')."<b></td>";
            echo "<td>$user->motivo</td>";
            echo "</tr>";
          }?>
    </table>  
</div>
<div id="test-swipe-2" class="col s12">
  <table>
        <tr>
        <th>Fecha</th>
        <th>Total</th>
        <th>Motivo</th>
        <th></th>
      </tr>
    </table>  
</div>
<div id="test-swipe-3" class="col s12">
  <table>
        <tr>
        <th>Fecha</th>
        <th>Total</th>
        <th>Motivo</th>
        <th></th>
      </tr>
    </table>  
</div>
<div id="test-swipe-4" class="col s12">
  <table>
        <tr>
        <th>Fecha</th>
        <th>Total</th>
        <th>Motivo</th>
        <th></th>
      </tr>
    </table>  
</div>
<div id="test-swipe-5" class="col s12">
  <table>
        <tr>
        <th>Fecha</th>
        <th>Total</th>
        <th>Motivo</th>
        <th></th>
      </tr>
    </table>  
</div>
<div id="test-swipe-6" class="col s12">
  <table>
        <tr>
        <th>Fecha</th>
        <th>Total</th>
        <th>Motivo</th>
        <th></th>
      </tr>
      <tr>
        <td>24/10/2019</td>
        <td>$10000</td>
        <td>No cumple con los req.</td>
        <th></th>
      </tr>
      
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