DROP TRIGGER `covoit_trajet_type`;
CREATE TRIGGER `covoit_trajet_type` 
BEFORE INSERT ON `COVOITURAGE` FOR EACH ROW
INSERT INTO TRAJET_TYPE (VILLE_DEPART,VILLE_ARRIVEE,TPS_MOYEN,PRIX) VALUES (NEW.V_DEPART,NEW.V_ARRIVEE,NEW.DUREE,NEW.PRIX);