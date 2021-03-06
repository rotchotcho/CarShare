/*
Fichiers: remplissage.sql
mysql -h venus -u fvielmas fvielmas -p
21507569, Bourdeau, Clement
20130265, Vielmas, Florent
*/



/*
print(" -------------------------------------------;")
print(" --- Suppression des anciens tuples --------;")
print(" -------------------------------------------;")
*/

DELETE FROM INSCRIPTION;
DELETE FROM TRAJET_TYPE;
DELETE FROM COVOITURAGE;
DELETE FROM VEHICULE;
DELETE FROM MEMBRE;

/*
Insertion des tuples dans les relations


print( -------------------------------------------;")
print( --- Insertion des nouveaux tuples ---------;")
print( -------------------------------------------;")

print( ------------------------------------------;")
print( -----     insertion membre    ------------;")
print( ------------------------------------------;")
*/

INSERT INTO MEMBRE(ID,PTYPE,EMAIL,MDP,NOM,PRENOM,DATE_NAISSANCE,ADRESSE,TEL,VEHICULE) VALUES(1,'UTILISATEUR','f.pignon@gmail.com','MdpFP','PIGNON','FRANCOIS',NULL,'ADR_FP',0612344569,NULL);
INSERT INTO MEMBRE(PTYPE,EMAIL,MDP,NOM,PRENOM,DATE_NAISSANCE,ADRESSE,TEL,VEHICULE) VALUES('UTILISATEUR','g.blanc@gmail.com','MdpGB','BLANC','GERARD',NULL,'ADR_GB',0678694217,'AB-123-CD');

/*
print( ------------------------------------------;")
print( -----    insertion vehicule   ------------;")
print( ------------------------------------------;")
*/

INSERT INTO VEHICULE VALUES('AB-123-CD','RENAULT','CLIO',5);
INSERT INTO VEHICULE VALUES('ER-456-EU','PEUGEOT','206',2);

/*
print( ------------------------------------------;")
print( -----  insertion covoiturage  ------------;")
print( ------------------------------------------;")
*/

INSERT INTO COVOITURAGE(NUMCOVOIT,V_DEPART,V_ARRIVEE,PRIX,DUREE,CONDUCTEUR,DATE_D,H_DEPART,H_ARRIVE,RDV,DEPOSE,NBPASSAGERS,NB_PLACES_DISPO) VALUES(1,'MARSEILLE','LYON',10,4,1,'2017/12/18',15,19,'RDV','DEPOSE',5,5);
INSERT INTO COVOITURAGE(V_DEPART,V_ARRIVEE,PRIX,DUREE,CONDUCTEUR,DATE_D,H_DEPART,H_ARRIVE,RDV,DEPOSE,NBPASSAGERS,NB_PLACES_DISPO) VALUES('PARIS','BORDEAUX',15,8,1,'2017/12/24',10,18,'RDV','DEPOSE',5,5);
INSERT INTO COVOITURAGE(V_DEPART,V_ARRIVEE,PRIX,DUREE,CONDUCTEUR,DATE_D,H_DEPART,H_ARRIVE,RDV,DEPOSE,NBPASSAGERS,NB_PLACES_DISPO) VALUES('PARIS','BORDEAUX',15,8,1,'2018/01/03',10,18,'RDV','DEPOSE',4,4);

/*
print( ------------------------------------------;")
print( -----  insertion trajet type  ------------;")
print( ------------------------------------------;")
*/


/*
print( ------------------------------------------;")
print( -----  insertion inscription  ------------;")
print( ------------------------------------------;")
*/


INSERT INTO INSCRIPTION VALUES (1,1);


/*
print( ------------------------------------------;")
print( --------   insertion avis   --------------;")
print( ------------------------------------------;")
*/

INSERT INTO AVIS VALUES(1,1,10);
INSERT INTO AVIS VALUES (1,1,5);
 
