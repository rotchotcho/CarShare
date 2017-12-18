/*
Fichier tables.sql
21507569, Bourdeau, Clement

*/
DROP TABLE AVIS CASCADE CONSTRAINT;
DROP TABLE INSCRIPTION CASCADE CONSTRAINT;
DROP TABLE COVOITURAGE CASCADE CONSTRAINT;
DROP TABLE TRAJET_TYPE CASCADE CONSTRAINT;
DROP TABLE VEHICULE CASCADE CONSTRAINT;
DROP TABLE MEMBRE CASCADE CONSTRAINT;


CREATE TABLE MEMBRE(
       ID VARCHAR(40) PRIMARY KEY,
       PTYPE VARCHAR(15) CHECK (PTYPE IN ('ADMINISTRATEUR','UTILISATEUR')),
       EMAIL VARCHAR(40),
       MDP VARCHAR(20),
       NOM VARCHAR(40),
       PRENOM VARCHAR(40),
       DATE_NAISSANCE DATE,
       ADRESSE VARCHAR(500),
       TEL INT,
       VEHICULE VARCHAR(10)
       );

CREATE TABLE VEHICULE(
       PLAQUE VARCHAR(10) PRIMARY KEY,
       MARQUE VARCHAR(20),
       MODELE VARCHAR(20),
       NBPLACES INT
       );

CREATE TABLE TRAJET_TYPE(
       VILLE_DEPART VARCHAR(30),
       VILLE_ARRIVEE VARCHAR(30),
       TPS_MOYEN INT,
       PRIX INT,
       CONSTRAINT PK_TRAJET_TYPE PRIMARY KEY (VILLE_DEPART,VILLE_ARRIVEE)
       );

CREATE TABLE COVOITURAGE(
       NUMCOVOIT INT PRIMARY KEY,
       V_DEPART VARCHAR(30),
       V_ARRIVEE VARCHAR(30),
       CONDUCTEUR VARCHAR(40),
       DATE_D DATE,
       H_DEPART INT,
       H_ARRIVE INT,
       RDV VARCHAR(30),
       DEPOSE VARCHAR(30),
       NBPASSAGERS NUMERIC(1),
       NB_PLACES_DISPO NUMERIC(1),
       CONSTRAINT FK_MEMBRE_PROP FOREIGN KEY(CONDUCTEUR) REFERENCES MEMBRE(ID),
       CONSTRAINT FK_COVOIT FOREIGN KEY(V_DEPART,V_ARRIVEE) REFERENCES TRAJET_TYPE(VILLE_DEPART,VILLE_ARRIVEE)
       );

CREATE TABLE INSCRIPTION(
       MEMBRE VARCHAR(40),
       TRAJET INT,
       CONSTRAINT FK_MEMBRE_INSCR FOREIGN KEY(MEMBRE) REFERENCES MEMBRE(ID),
       CONSTRAINT FK_TRAJET_INSCR FOREIGN KEY(TRAJET) REFERENCES COVOITURAGE(NUMCOVOIT)
       );

CREATE TABLE AVIS(
       ID_COND VARCHAR(40),
       ID_PASSAGER VARCHAR(40),
       NOTE INT,
       CONSTRAINT FK_ID_COND FOREIGN KEY(ID_COND) REFERENCES MEMBRE(ID),
       CONSTRAINT FK_ID_PASSAGER FOREIGN KEY(ID_PASSAGER) REFERENCES MEMBRE(ID)
       );
       


