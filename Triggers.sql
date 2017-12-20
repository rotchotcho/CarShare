/*
rlwrap sqlplus cbourdeau/azertyui@venus/licence
Fichier tables.sql
21507569, Bourdeau, Clement

*/

DROP TRIGGER new_trajet_type;


/*
	
création d'un nouveau trajet type lors de la proposition d'un covoiturage si celui-ci n'existe pas

Ne marche pas car on ne peut pas utiliser la table covoiturage dans un trigger invoqué par cette même table

*/
DELIMITER /

CREATE TRIGGER OR REPLACE new_trajet_type
AFTER INSERT ON COVOITURAGE FOR EACH ROW
BEGIN
	INSERT INTO TRAJET_TYPE(VILLE_DEPART,VILLE_ARRIVEE,TPS_MOYEN,PRIX)
	SELECT(:NEW.V_DEPART,:NEW.V_ARRIVEE,:NEW.DUREE,:NEW.PRIX)
	FROM COVOITURAGE;
END /



/*
	IF (:NEW.V_DEPART NOT IN (SELECT VILLE_DEPART FROM TRAJET_TYPE))
	AND (:NEW.V_ARRIVEE NOT IN (SELECT VILLE_ARRIVEE FROM TRAJET_TYPE))
DECLARE
	DEP VARCHAR(30);
	ARR VARCHAR(30);
	TPS INT;
	P INT;
SELECT NEW.V_DEPART, NEW.V_ARRIVEE, NEW.DUREE, NEW.PRIX
	INTO DEP, ARR, TPS, P
	FROM COVOITURAGE;
INSERT INTO TRAJET_TYPE(VILLE_DEPART,VILLE_ARRIVEE,TPS_MOYEN,PRIX)
	VALUES(NEW.V_DEPART,.NEW.V_ARRIVEE,NEW.DUREE,NEW.PRIX)
	FROM COVOITURAGE,TRAJET_TYPE
	WHERE NEW.VILLE_DEPART NOT IN (SELECT V_DEPART FROM TRAJET_TYPE)
	AND NEW.VILLE_ARRIVEE NOT IN (SELECT V_ARRIVEE FROM TRAJET_TYPE);

CREATE TRIGGER nouveau_passager
AFTER INSERT ON INSCRIPTION 
DECLARE
	nbpass NUMERIC(1),
BEGIN
	SELECT NB_PLACES_DISPO
	INTO nbpass
	FROM COVOITURAGE,INSCRIPTION
	WHERE TRAJET=NUMCOVOIT;
	UPDATE COVOITURAGE
	SET NB_PLACES_DISPO=nbpass-1; 
END ;
/
-- nbpassagers <= nbplaces véhicule

/*

s'assurer que l'on ne dépasse pas le nbplace de la voiture
a mettre dans un trigger

*/

--procedures

/*

ajouter un vehicule a un utilisateur

*/

