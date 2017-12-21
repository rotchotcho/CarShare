<?php	


$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$email = $_POST['email'];
$mdp = $_POST['password'];
$pseudo = $_POST['pseudo'];
$date_nai = $_POST['date_naissance'];
$adr = $_POST['adr'];
$tel = $_POST['tel'];

echo 'Enregistrement dans la base de: <br/>--'.$prenom.' '.$nom;
echo '<br/>-- ' .$email.' '.$mdp;
echo '<br/>-- '.$pseudo.' '.$date_nai;
echo '<br/>-- ' .$adr.' '.$tel; 


// -------------- Connexion a la BD
try {
$dsn = "mysql:host=prodpeda-venus; dbname=fvielmas";
$user = "fvielmas";
$pass = "garrinch";
$pdo = new PDO($dsn, $user, $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
echo '<br/><br/>--> Connexion à la base de donnée OK'; 
}
catch (Exception $e) {
    die("<br/>Impossible de se connecter: <br/>>" . $e->getMessage());
}


// -------------------- Inscription d'un nouveau membre
try {
$insert = $pdo->prepare("INSERT INTO MEMBRE (ptype,email,mdp,nom,prenom,date_naissance,adresse,tel) VALUES ('UTILISATEUR',:email,:mdp,:nom,:prenom,:date_naissance,:adresse,:tel)");

$insert->bindParam(':email', $email);
$insert->bindParam(':mdp', $mdp);
$insert->bindParam(':nom', $nom);
$insert->bindParam(':date_naissance', $date_nai);
$insert->bindParam(':prenom', $prenom);
$insert->bindParam(':adresse', $adr);
$insert->bindParam(':tel', $tel);
$insert->execute();
echo '<br/>--> Insertion du nouveau membre dans la base de donnée ok';
}
catch (Exception $e) {
    echo "<br/>Impossible d'inscrire le nouveau membre: <br/>>" . $e->getMessage();
}

// ------------------------ Affichage des membres
try {
$sql = 'SELECT id, nom, prenom, date_naissance, adresse, tel, email, mdp FROM MEMBRE'; 
    $query = $pdo->query($sql);
    $tuples = $query->fetchAll(PDO::FETCH_OBJ);
    
    $nom = $tuple->nom;
    echo "<ul>";
      foreach($tuples as $tuple) {
      echo "<li>",$tuple->id," ",$tuple->nom," ",$tuple->prenom," ",$tuple->date_naissance,' ',$tuple->adresse," ",$tuple->tel," ",$tuple->email," ",$tuple->mdp,"</li>";
      }
    echo"</ul>";
echo '<br/>--> affichage des membres actualisés';
}
catch (Exception $e) {
    echo "<br/>Impossible d'inscrire le nouveau membre: <br/>>" . $e->getMessage();
}
?>


<p>retour sur l'inscription : <a href="inscription.php"> clique ici</a> pour revenir à la page inscription.</p>    
