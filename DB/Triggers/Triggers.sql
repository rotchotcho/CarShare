/*
rlwrap sqlplus cbourdeau/azertyui@venus/licence
Fichier tables.sql
21507569, Bourdeau, Clement

*/


DROP TRIGGER new_trajet_type;

/*
--DROP TRIGGER nouveau_passager;	
création d'un nouveau trajet type lors de la proposition d'un covoiturage si celui-ci n'existe pas

Ne marche pas car on ne peut pas utiliser la table covoiturage dans un trigger invoqué par cette même table

*/

CREATE TRIGGER new_trajet_type	
BEFORE INSERT ON COVOITURAGE FOR EACH ROW
BEGIN
	INSERT INTO TRAJET_TYPE (VILLE_DEPART,VILLE_ARRIVEE,PRIX)
	VALUES (:new.V_DEPART,:new.V_ARRIVEE,:new.V_DEPART,:new.PRIX);	
END;
