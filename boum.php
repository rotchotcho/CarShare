<?php	


$nom = $_GET['nom'];
$prenom = $_GET['prenom'];
$email = $_GET['email'];
$mdp = $_GET['password'];
$pseudo = $_GET['pseudo'];
$date_nai = $_GET['nom'];
$adr = $_GET['adr'];
$tel = $_GET['tel'];
echo 'Bonjour, '.$prenom.' '.$nom;

echo '-- ' .$email.' '.$password;
echo '-- '.$pseudo.' '.$date_nai;
echo '-- ' .$adr.' '.$tel; 
/*

       $dsn = "mysql:host=prodpeda-venus; dbname=fvielmas";
       $user = "fvielmas";
       $pass = "garrinch";
       
       $pdo = new PDO($dsn, $user, $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));


////inscription du nouveau membre  dans la base donnée

$insert = $pdo->prepare("INSERT INTO MEMBRE (id, ptype, mdp, nom, prenom, adr, tel) VALUES (40,'UTILISATEUR', :mdp, :nom, :prenom, :adr, :tel)");
//$insert->bindParam(':email', $email);
$insert->bindParam(':mdp', $mdp);
$insert->bindParam(':nom', $nom);
$insert->bindParam(':prenom', $prenom);
$insert->bindParam(':adr', $adr);
$insert->bindParam(':tel', $tel);
$insert->execute();


$sql = 'SELECT nom, prenom FROM MEMBRE'; 
    $query = $pdo->query($sql);
    $tuples = $query->fetchAll(PDO::FETCH_OBJ);
    
    $nom = $tuple->nom;
    echo "<ul>";
      foreach($tuples as $tuple) {
      echo "<li>",$tuple->nom," ",$tuple->prenom,"</li>";
      }
    echo"</ul>";
*/    
    ?>

<p>retour sur l'inscription : <a href="inscription.php"> clique ici</a> pour revenir à la page inscription.</p>    