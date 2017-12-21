/*
mysql -h venus -u fvielmas fvielmas -p
Fichier tables.sql
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

INSERT INTO MEMBRE VALUES(1,'UTILISATEUR','f.pignon@gmail.com','MdpFP','PIGNON','FRANCOIS',NULL,'ADR_FP',0612344569,NULL);
INSERT INTO MEMBRE VALUES(2,'UTILISATEUR','g.blanc@gmail.com','MdpGB','BLANC','GERARD',NULL,'ADR_GB',0678694217,'AB-123-CD');

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

INSERT INTO COVOITURAGE VALUES(1,'MARSEILLE','LYON',10,4,1,NULL,15,19,'RDV','DEPOSE',5,5);
INSERT INTO COVOITURAGE VALUES(2,'PARIS','BORDEAUX',15,8,1,NULL,10,18,'RDV','DEPOSE',5,5);

/*
print( ------------------------------------------;")
print( -----  insertion trajet type  ------------;")
print( ------------------------------------------;")
*/

INSERT INTO TRAJET_TYPE VALUES('MARSEILLE','LYON',4,10);
/*
INSERT INTO TRAJET_TYPE(VILLE_DEPART,VILLE_ARRIVEE,TPS_MOYEN,PRIX)
SELECT V_DEPART,V_ARRIVEE,DUREE,COVOITURAGE.PRIX
FROM COVOITURAGE,TRAJET_TYPE
WHERE VILLE_DEPART NOT IN (SELECT V_DEPART FROM TRAJET_TYPE)
AND VILLE_ARRIVEE NOT IN (SELECT V_ARRIVEE FROM TRAJET_TYPE);
*/

/*
print( ------------------------------------------;")
print( -----  insertion inscription  ------------;")
print( ------------------------------------------;")
*/


INSERT INTO INSCRIPTION VALUES (1,1);
