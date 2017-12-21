/*
mysql -h venus -u fvielmas fvielmas -p
Fichier : update_nbplaces.sql
21507569, Bourdeau, Clement
20130265, Vielmas, Florent
*/


DROP TRIGGER `update_nbplaces`;
CREATE TRIGGER `update_nbplaces` AFTER INSERT ON `INSCRIPTION`
FOR EACH ROW
UPDATE COVOITURAGE
SET NB_PLACES_DISPO = NB_PLACES_DISPO - 1 
WHERE COVOITURAGE.NUMCOVOIT = NEW.TRAJET

