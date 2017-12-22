/*
mysql -h venus -u fvielmas fvielmas -p
Fichier tables.sql
21507569, Bourdeau, Clement
20130265, Vielmas, Florent
*/

DROP PROCEDURE `avg_avis`;
CREATE PROCEDURE `avg_avis` (membre INT,OUT moy_avis DOUBLE)
SELECT avg(NOTE) INTO moy_avis
FROM AVIS
WHERE ID_COND=membre;
