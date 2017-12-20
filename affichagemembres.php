<?php

// --- appel a la base de donnée
$dsn = "mysql:host=prodpeda-venus; dbname=fvielmas";
$user = "fvielmas";
$pass = "garrinch";

// ---  initialisation de la base de donnée ----
$pdo = new PDO($dsn, $user, $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));


// --- définition de la requête
$sql = 'SELECT nom, prenom FROM MEMBRE ORDER BY nom'; 

// --- appel de la requête via l'instance de pdo
$query = $pdo->query($sql);

//le résultat est formatté sous la forme d'une collection (=tableau d'objet)
$tuples = $query->fetchAll(PDO::FETCH_OBJ);

// --- affichage du résultat
echo "<ul>";
foreach($tuples as $tuple) {
	echo "<li>",$tuple->nom," ",$tuple->prenom,"</li>";	
}
echo "</ul>";
?>

