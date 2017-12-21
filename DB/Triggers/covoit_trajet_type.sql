/*
mysql -h venus -u fvielmas fvielmas -p
Fichier: covoit_trajet_type.sql
21507569, Bourdeau, Clement
20130265, Vielmas, Florent
*/


DROP TRIGGER `covoit_trajet_type`;
CREATE TRIGGER `covoit_trajet_type` 
AFTER INSERT ON `COVOITURAGE` FOR EACH ROW
INSERT INTO TRAJET_TYPE (VILLE_DEPART,VILLE_ARRIVEE,TPS_MOYEN,PRIX) VALUES (NEW.V_DEPART,NEW.V_ARRIVEE,NEW.DUREE,NEW.PRIX);
