DROP TABLE AVIS;
DROP TABLE PROPOSITION;
DROP TABLE INSCRIPTION;
DROP TABLE TRAJET;
DROP TABLE MEMBRE;
DROP TABLE VEHICULE;


CREATE TABLE VEHICULE(
       PLAQUE NUMERIC(10) PRIMARY KEY,
       MARQUE VARCHAR(20),
       MODELE VARCHAR(20),
       NBPLACES INT
       );

CREATE TABLE MEMBRE(
       ID VARCHAR(40) PRIMARY KEY,
       PTYPE VARCHAR(15) CHECK (PTYPE IN ('ADMINISTRATEUR','UTILISATEUR')),
       EMAIL VARCHAR(40),
       MDP VARCHAR(20),
       NOM VARCHAR(40),
       PRENOM VARCHAR(40),
       DATE_NAISSANCE INT,
       ADRESSE VARCHAR(500),
       TEL INT,
       VEHICULE NUMERIC(10)
       );

CREATE TABLE TRAJET(
       NUMTRAJET INT PRIMARY KEY,
       V_DEPART VARCHAR(30),
       V_ARRIVE VARCHAR(30),
       DATE_D DATE,
       H_DEPART INT,
       TPS_MOYEN INT,
       H_ARRIVE INT,
       PRIX INT,
       VEHICULE NUMERIC(10),
       NBPASSAGERS NUMERIC(1),
       NB_PLACES_DISPO NUMERIC(1),
       RDV VARCHAR(30),
       DEPOSE VARCHAR(30),
       CONSTRAINT FK_VEHICULE_TRAJET FOREIGN KEY(VEHICULE) REFERENCES VEHICULE(PLAQUE)
       );

CREATE TABLE PROPOSITION(
       MEMBRE VARCHAR(40),
       TRAJET INT,
       CONSTRAINT FK_MEMBRE_PROP FOREIGN KEY(MEMBRE) REFERENCES MEMBRE(ID),
       CONSTRAINT FK_TRAJET_PROP FOREIGN KEY(TRAJET) REFERENCES TRAJET(NUMTRAJET)
       );

CREATE TABLE INSCRIPTION(
       MEMBRE VARCHAR(40),
       TRAJET INT,
       CONSTRAINT FK_MEMBRE_INSCR FOREIGN KEY(MEMBRE) REFERENCES MEMBRE(ID),
       CONSTRAINT FK_TRAJET_INSCR FOREIGN KEY(TRAJET) REFERENCES TRAJET(NUMTRAJET)
       );

CREATE TABLE AVIS(
       ID_COND VARCHAR(40),
       ID_PASSAGER VARCHAR(40),
       NOTE INT,
       CONSTRAINT FK_ID_COND FOREIGN KEY(ID_COND) REFERENCES MEMBRE(ID),
       CONSTRAINT FK_ID_PASSAGER FOREIGN KEY(ID_PASSAGER) REFERENCES MEMBRE(ID)
       );
       


