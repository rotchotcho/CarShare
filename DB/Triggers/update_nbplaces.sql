/*
rlwrap sqlplus cbourdeau/azertyui@venus/licence
Fichier tables.sql
21507569, Bourdeau, Clement
*/

DROP TRIGGER `update_nbplaces`;
CREATE TRIGGER `update_nbplaces` AFTER INSERT ON `INSCRIPTION`
FOR EACH ROW
UPDATE COVOITURAGE
SET NB_PLACES_DISPO = NB_PLACES_DISPO - 1 
WHERE COVOITURAGE.NUMCOVOIT = NEW.TRAJET

