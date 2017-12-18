/*
Ficier remplissage.sql
21507569, Bourdeau, Clement

*/

ALTER session SET NLS_DATE_FORMAT='DD/MM/YYYY' ;

prompt -------------------------------------------;
prompt --- Suppression des anciens tuples --------;
prompt -------------------------------------------;

DELETE FROM VEHICULE;
DELETE FROM MEMBRE;
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
prompt -----  insertion trajet type  ------------;
prompt ------------------------------------------;

INSERT INTO TRAJET_TYPE VALUES('MARSEILLE','LYON',4,10);

prompt ------------------------------------------;
prompt -----  insertion covoiturage  ------------;
prompt ------------------------------------------;

INSERT INTO COVOITURAGE VALUES(1,'MARSEILLE','LYON',1,'18/12/2017',15,19,'RDV','DEPOSE',5,5);
