/*
Trigger 2 : décrementer le nombre de places disponibles à l'issu des inscriptions sur un covoiturage
*/

DROP TRIGGER `update_nbplaces`;
CREATE TRIGGER `update_nbplaces`
AFTER INSERT ON `INSCRIPTION`

DECLARE nb_places NUMERIC(1);
	SELECT NB_PLACES_DISPO INTO nb_places FROM COVOITURAGE,INSCRIPTION
	WHERE TRAJET = NUMCOVOIT;
	UPDATE COVOITURAGE
	SET NB_PLACES_DISPO = nb_places-1; 

