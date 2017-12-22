/*
Fichier triggers_and_procedures.sql
21507569, Bourdeau, Clement
20130265, Vielmas, Florent
*/

DROP TRIGGER IF EXISTS `covoit_trajet_type`;
DROP TRIGGER IF EXISTS  `update_nbplaces`;
DROP PROCEDURE IF EXISTS `avg_prix`;
DROP PROCEDURE IF EXISTS `avg_avis`;
/*
----------------------Triggers-------------------
*/

/*
Trigger qui ajoute un trajet type entre 2 villes après la création d'un covoiturage si ce premier n'existe pas
*/

DELIMITER |
CREATE TRIGGER `covoit_trajet_type` AFTER INSERT ON `COVOITURAGE`
FOR EACH ROW IF NEW.V_DEPART NOT IN(SELECT VILLE_DEPART FROM TRAJET_TYPE) AND NEW.V_ARRIVEE NOT IN (SELECT VILLE_ARRIVEE FROM TRAJET_TYPE) 
THEN INSERT INTO TRAJET_TYPE (VILLE_DEPART,VILLE_ARRIVEE,TPS_MOYEN,PRIX) VALUES (NEW.V_DEPART,NEW.V_ARRIVEE,NEW.DUREE,NEW.PRIX);
END IF;
|

DELIMITER ;


/*
Trigger qui décrémente le nombre de places d'un covoiturage a chaque inscription à celui ci
*/

DELIMITER |
CREATE TRIGGER `update_nbplaces` AFTER INSERT ON `INSCRIPTION`
FOR EACH ROW
UPDATE COVOITURAGE
SET NB_PLACES_DISPO = NB_PLACES_DISPO - 1 
WHERE COVOITURAGE.NUMCOVOIT = NEW.TRAJET;
|

DELIMITER ;


/*
--------------------Procédures--------------------
*/

/*
Procedure qui calcule la moyenne des prix d'un trajet entre deux villes données en entrée
*/

CREATE PROCEDURE `avg_prix` (vd VARCHAR(30),va VARCHAR(30),OUT moy_prix DOUBLE)
SELECT avg(COVOITURAGE.PRIX) INTO moy_prix
FROM TRAJET_TYPE,COVOITURAGE
WHERE VILLE_DEPART = vd AND VILLE_ARRIVEE = va AND VILLE_DEPART = V_DEPART AND VILLE_ARRIVEE = V_ARRIVEE;

/*
Procedure qui calcule la moyenne des avis d'un membre donné en entrée
*/

CREATE PROCEDURE `avg_avis` (membre INT,OUT moy_avis DOUBLE)
SELECT avg(NOTE) INTO moy_avis
FROM AVIS
WHERE ID_COND=membre;
