<?php

$ville_depart = $_GET['depart'];
$ville_arrivee = $_GET['arrivee'];
/*
$date = $_GET['date'];
$heure = $_GET['heure'];
$rdv = $_GET['rdv'];
$depot = $_GET['depot'];
$prix = $_GET['prix'];
$nbplaces = $_GET['nbpass'];
*/
echo 'Trajet consulté: <br/>--'.$ville_depart.' -->  '.$ville_arrivee;

// --------------connexion a la BD
try {
    $dsn = "mysql:host=prodpeda-venus; dbname=fvielmas";
    $user = "fvielmas";
    $pass = "garrinch";
    $pdo = new PDO($dsn, $user, $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    echo '<br/><br/>--> Connexion à la base de donnée OK'; 
}
catch (Exception $e) {
    die("<br/>Impossible de se connecter a la base de donnée: <br/>>" . $e->getMessage());
}

// -------------------- Affichage des covoiturages
try {
    $stmt = $pdo->prepare("SELECT numcovoit, v_depart, v_arrivee, nom, prenom FROM COVOITURAGE,MEMBRE where v_depart = ? AND v_arrivee = ? AND conducteur=id");
    if ($stmt->execute(array($_GET['depart'],$_GET['arrivee']))){ // liaison implicite
        while ($row = $stmt->fetch()) {
            print("<br/>".$row['numcovoit']." : ".$row['v_depart']." : ".$row['v_arrivee']." :".$row['nom']);
        }
    }
}
catch (Exception $e) {
    echo "<br/>Impossible d'afficher les covoiturages <br/>>" . $e->getMessage();
}
?>
<p>retour acceuil : <a href="accueil.html"> clique ici</a> pour revenir à la page d'accueil.</p>    
