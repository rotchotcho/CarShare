
/*
         TEST : Trigger 1
Remarquer qu'un trajet type est bien généré automatiquement suite à l'entrée d'un nouveau covoiturage
*/ 

/*
INSERT INTO COVOITURAGE(V_DEPART,V_ARRIVEE,PRIX,DUREE,CONDUCTEUR,DATE_D,H_DEPART,H_ARRIVE,RDV,DEPOSE,NBPASSAGERS,NB_PLACES_DISPO) VALUES('GRENOBLE','ISTAMBUL',10,4,1,NULL,15,19,'RDV','DEPOSE',5,5);
*/

/*
ne marche pas si deux mêmes proposition de voyage par un nouveau conducteur
/*

/*
INSERT INTO COVOITURAGE(V_DEPART,V_ARRIVEE,PRIX,DUREE,CONDUCTEUR,DATE_D,H_DEPART,H_ARRIVE,RDV,DEPOSE,NBPASSAGERS,NB_PLACES_DISPO) VALUES('GRENOBLE','ISTAMBUL',10,4,2,NULL,15,19,'RDV','DEPOSE',5,5);
*/


/*
       TEST : Trigger 2
vérifier que le nombre de places est décrémenté pour chaque inscription sur le covoiturage
gerer la clôture des inscription une foi nb_places = 0
ici test sur Marseille -  Lyon
*/


INSERT INTO INSCRIPTION VALUES (1,1);
