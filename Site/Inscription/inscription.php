<!DOCTYPE html>	
<html>
  <head>
   
    <meta charset="utf-8"/>
     <link href="../css/bootstrap.min.css" rel="stylesheet">
    <title>Car Share, le site de covoiturage</title>
  </head>
  <body>
    <h1>Bienvenue sur Car share, le site numéro du covoiturage</h1>
     <p>Aujourd'hui nous sommes le <?php echo date('d/m/Y h:i:s'); ?>.</p>
	<a href="http://localhost/~fvielmas/CarShare/Site/accueil.html">Accueil</a>
	<p>Inscription :</p>
	<form method="post" action="enregistrement-membre.php">
	  Nom* : <input name="nom" type="text" required><br/>
	  Prénom* : <input name="prenom" type="text" required><br/>
	  Email* : <input name="email" type="email" required><br/>
	  Mot de passe* : <input name="password" type="password" required><br/>
	  Pseudonyme : <input name="pseudo" type="text"><br/>
	  Date de naissance* : <input name="date_naissance" type="date" required><br/>
	  Adresse* : <input name="adr" type="text" required><br/>
	  Tel* : <input name="tel" type="text" pattern="[0-9]{10}" required><br/>
	  <input type="submit" value="Je m'inscris !">
	</form>
	<p>* Champs obligatoires</p>
  </body>
 
</html>
