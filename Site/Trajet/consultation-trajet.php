<?php	

$ville_depart = $_GET['ville_depart'];
$ville_arrivee = $_GET['ville_arrivee'];

echo 'Trajet proposé: <br/>--'.$ville_depart.' -->  '.$ville_arrivee;


$dsn = "mysql:host=prodpeda-venus; dbname=fvielmas";
$user = "fvielmas";
$pass = "garrinch";
$pdo = new PDO($dsn, $user, $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));

echo '<br/><br/>--> Connexion à la base de donnée OK'; 


// insertion du trajet dans trajet type


$insert = $pdo->prepare("INSERT INTO TRAJET_TYPE (ville_depart,ville_arrivee) VALUES (:vd,:va)");
$insert->bindParam(':vd', $adr);
$insert->bindParam(':va', $tel);
$insert->execute();

echo '<br/>--> Insertion du nouveau trajet type dans la base de donnée ok';


$sql = 'SELECT ville_depart,ville_arrivee FROM TRAJET_TYPE'; 
$query = $pdo->query($sql);
$tuples = $query->fetchAll(PDO::FETCH_OBJ);
echo "<ul>";
foreach($tuples as $tuple) {
    echo "<li>",$tuple->ville_depart," ",$tuple->ville_arrivee,"</li>";
}
echo"</ul>";
echo '<br/>--> affichage des trajets types actualisés';
?>


<p>retour acceuil : <a href="accueil.php"> clique ici</a> pour revenir à la page d'accueil.</p>    
