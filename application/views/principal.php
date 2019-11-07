<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
  <div class="container ">
    <div class="row center">
      <div class="col s12 center">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/PAN_logo_%28Mexico%29.svg/1200px-PAN_logo_%28Mexico%29.svg.png" width="60%" height="60%">  
      </div>
    </div>
  </div>
</body>

    <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
  </script>

  <script>
  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.sidenav');
    var instances = M.Sidenav.init(elems);
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems);
  });

  $(document).ready(function(){
    $('.sidenav').sidenav();
  });    
  </script>