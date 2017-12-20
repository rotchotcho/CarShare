<?php
   $dsn = "mysql:host=prodpeda-venus; dbname=fvielmas";
   $user = "fvielmas";
   $pass = "garrinch";
   
   $pdo = new PDO($dsn, $user, $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
$sql = 'SELECT * FROM MEMBRE'; 
$query = $pdo->query($sql);
$tuples = $query->fetchAll(PDO::FETCH_OBJ);

$nom = $tuple->nom;
echo "<ul>";
  foreach($tuples as $tuple) {
  echo "<li>",$tuple->nom," ",$tuple->prenom,"</li>";
  }
  echo"</ul>";

?>
