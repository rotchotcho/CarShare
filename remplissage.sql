/*
Ficier remplissage.sql
21507569, Bourdeau, Clement

*/

ALTER session SET NLS_DATE_FORMAT='DD/MM/YYYY' ;

prompt -------------------------------------------;
prompt --- Suppression des anciens tuples --------;
prompt -------------------------------------------;

DELETE FROM COVOITURAGE CASCADE;
DELETE FROM VEHICULE CASCADE;
DELETE FROM MEMBRE CASCADE ;
DELETE FROM TRAJET_TYPE CASCADE ;

/*
Insertion des tuples dans les relations
*/

prompt -------------------------------------------;
prompt --- Insertion des nouveaux tuples ---------;
prompt -------------------------------------------;

prompt ------------------------------------------;
prompt -----     insertion membre    ------------;
prompt ------------------------------------------;

INSERT INTO MEMBRE VALUES(1,'UTILISATEUR','f.pignon@gmail.com','MdpFP','PIGNON','FRANCOIS','01/01/1990','ADR_FP',0612344569,NULL);
INSERT INTO MEMBRE VALUES(2,'UTILISATEUR','g.blanc@gmail.com','MdpGB','BLANC','GERARD','17/05/1986','ADR_GB',0678694217,'AB-123-CD');

prompt ------------------------------------------;
prompt -----    insertion vehicule   ------------;
prompt ------------------------------------------;

INSERT INTO VEHICULE VALUES('AB-123-CD','RENAULT','CLIO',5);
INSERT INTO VEHICULE VALUES('ER-456-EU','PEUGEOT','206',2);

prompt ------------------------------------------;
prompt -----  insertion covoiturage  ------------;
prompt ------------------------------------------;

INSERT INTO COVOITURAGE VALUES(1,'MARSEILLE','LYON',10,4,1,'18/12/2017',15,19,'RDV','DEPOSE',5,5);
INSERT INTO COVOITURAGE VALUES(2,'PARIS','BORDEAUX',15,8,1,'19/12/2017',10,18,'RDV','DEPOSE',5,5);

prompt ------------------------------------------;
prompt -----  insertion trajet type  ------------;
prompt ------------------------------------------;

INSERT INTO TRAJET_TYPE VALUES('MARSEILLE','LYON',4,10);
/*
INSERT INTO TRAJET_TYPE(VILLE_DEPART,VILLE_ARRIVEE,TPS_MOYEN,PRIX)
SELECT V_DEPART,V_ARRIVEE,DUREE,COVOITURAGE.PRIX
FROM COVOITURAGE,TRAJET_TYPE
WHERE VILLE_DEPART NOT IN (SELECT V_DEPART FROM TRAJET_TYPE)
AND VILLE_ARRIVEE NOT IN (SELECT V_ARRIVEE FROM TRAJET_TYPE);
*/

prompt ------------------------------------------;
prompt -----  insertion inscription  ------------;
prompt ------------------------------------------;


INSERT INTO INSCRIPTION VALUES (1,1);
