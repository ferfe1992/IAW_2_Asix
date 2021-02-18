<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title><?php echo ($Site);?></title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<?php
require 'config.php';
$db = new PDO('mysql:host=' . $BDserver . ';port='. $BDport .';dbname=' . $BD, $user, $password);
?>

<body>

  <!-- Navigation -->
  <!-- TO-DO: Añadir aquí la cabecera (fichero nav.php) -->

<?php
require 'nav.php';

$consulta = $db->prepare('SELECT * FROM productos.Producto');
$consulta->execute();
?>

  <!-- Page Content -->

  <!-- TO-DO: Añadir la información de la base de datos dentro de éste contenedor
              Se aconseja explorar el HTML para ver qué es lo que queremos modificar. 
      -->
  <div class="container">

    <div class="row" style="margin-top:150px;">

      <div class="col-lg-12">
        <div class="row">
<?php
while($fila = $consulta->fetch())
{?>
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="<?php echo ($fila[4]);?>" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><?php echo ($fila[1]);?></a>
                </h4>
                <h5><?php echo ($fila[3]);?></h5>
                <p class="card-text"><?php echo ($fila[2]);?></p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
<?php
}
?>
        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
 <!-- TO-DO: Añadir aquí el pie (fichero footer.php) -->
<?php
require 'footer.php'
?>

</body>

</html>
