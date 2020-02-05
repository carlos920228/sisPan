<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<style type="text/css">
	body{
		background-image: url(https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/PAN_logo_%28Mexico%29.svg/1200px-PAN_logo_%28Mexico%29.svg.png);
		background-size: cover;
		color: #fff;
		
	}
	.login{
		margin-top: 30px;
		max-width: 600px;
	}
	.login .card{
		background:rgba(0, 0, 0, .6);
	}
	.login label{
		font-size: 20px;
		color: #ccc;
	}
	.login input{
		font-size: 20px !important;
		color: #ccc;
		text-align: center;
	}
	.login button:hover{
		padding: 0px 40px; 

	}
</style>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
          <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>
<body>
<div class="container center">
<div class="row login">
	<div class="col s12 ">
		<form method="post" action='<?php echo base_url()."welcome/entrar";?>'>
		<div class="card">
			<div class="card-action blue white-text">
					<h3 class="center-align">SIFI</h3>
			</div>
			<div class="card-content">
				<div class="form-field">
					<label for="username">Correo</label>
					<input type="email" name="username" id="username" class="validate" required>
				</div><br>
			</div>
			<div class="card-content">
				<div class="form-field">
					<label for="password">Contraseña</label>
					<input type="password" name="password" id="password" class="validate" required>
				</div><br>
			</div>
			<div class="card-content">
				<div class="form-field">
				<button class="btn waves-effect waves-light btn-large blue" type="submit" name="action">Entrar
    				<i class=" material-icons right">touch_app</i>
  				</button>
				</div><br>
			</div>
		</div>
	</div>
</div>
</div>
</body>