<?php	
$ville_depart = $_GET['depart'];
$ville_arrivee = $_GET['arrivee'];
$date = $_GET['date'];
$heure = $_GET['heure'];
$rdv = $_GET['rdv'];
$depot = $_GET['depot'];
$prix = $_GET['prix'];
$nbplaces = $_GET['nbpass'];

echo 'Trajet proposé: <br/>--'.$ville_depart.' -->  '.$ville_arrivee;
echo '<br/>--'.$date.' '.$heure;
echo '<br/>--'.$rdv.' '.$depot;
echo '<br/>--'.$prix.' '.$nbplaces;


$dsn = "mysql:host=prodpeda-venus; dbname=fvielmas";
$user = "fvielmas";
$pass = "garrinch";
$pdo = new PDO($dsn, $user, $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));

echo '<br/><br/>--> Connexion à la base de donnée OK'; 

// insertion du trajet dans trajet type

$insert = $pdo->prepare("INSERT INTO TRAJET_TYPE (ville_depart,ville_arrivee) VALUES (:vd,:va)");

$insert->bindParam(':vd', $ville_depart);
$insert->bindParam(':va', $ville_arrivee);
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

$insert = $pdo->prepare("INSERT INTO COVOITURAGE (numcovoit,v_depart,v_arrivee,prix,conducteur,date_d,h_depart,rdv,depose,nbpassagers) 
VALUES (10,:vd,:va,:prix,41,:date_d,123,:rdv,:depose,:nbpassagers)");

$insert->bindParam(':vd', $ville_depart);
$insert->bindParam(':va', $ville_arrivee);
$insert->bindParam(':prix', $prix);
$insert->bindParam(':date_d', $date);
//$insert->bindParam(':h_depart', $heure);
$insert->bindParam(':rdv', $rdv);
$insert->bindParam(':depose', $depot);
$insert->bindParam(':nbpassagers', $nbplaces);
$insert->execute();
echo '<br/>--> Insertion du nouveau covoiturage dans la base de donnée ok';

$sql = 'SELECT numcovoit, v_depart, v_arrivee FROM COVOITURAGE'; 
$query = $pdo->query($sql);
$tuples = $query->fetchAll(PDO::FETCH_OBJ);
echo "<ul>";
foreach($tuples as $tuple) {
    echo "<li>",$tuple->numcovoit,' ',$tuple->v_depart,' ',$tuple->v_arrivee,"</li>";
}
echo"</ul>";
echo '<br/>--> affichage des covoiturages types actualisés';

?>
<p>retour acceuil : <a href="../accueil.html"> clique ici</a> pour revenir à la page d'accueil.</p>    
