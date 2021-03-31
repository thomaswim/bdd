/*CREATE TABLE Personnel (
    idPersonnel integer PRIMARY KEY,
    nom varchar(80),
    prénom varchar(80),
    anneeRecrutement int,
    dateNaissance int,
    adresse varchar(100));

CREATE TABLE LaboratoireExterne(
    idAuteurExterne integer PRIMARY KEY,
    nom varchar(80),
    pays varchar(80));

CREATE TABLE conférence(
    idconférence varchar(4) PRIMARY KEY,
    nomconférence varchar(80),
    annéeconférence varchar(8),
    classeconférence varchar(80));

CREATE TABLE encadrement(
    iddoctorant varchar(4) REFERENCES Doctorant(idDoctorant),
    idchercheur varchar(4) REFERENCES Chercheur(idChercheur)
    CONSTRAINT contrainte_Publier PRIMARY KEY(iddoctorant,idchercheur)
    );

CREATE TABLE chercheur (
    idChercheur varchar(4) REFERENCES Personnel(idPersonnel) ON DELETE CASCADE PRIMARY KEY,
    grade varchar(16));

CREATE TABLE Doctorant(
    idDoctorant varchar(4) REFERENCES personnel(idPersonnel) ON DELETE CASCADE PRIMARY KEY,
    anneDebutThese varchar(4),
    anneeSoutenance varchar(4));

CREATE TABLE Article(
    idArticle varchar(4) PRIMARY KEY,
    titre varchar(120),
    idConférence varchar(4) REFERENCES conférence(idconférence) ON DELETE SET NULL);

CREATE TABLE PublierLAAS(
    idpersonnel varchar(4) REFERENCES personnel(idpersonnel) ON DELETE SET NULL,
    idarticle varchar(4) REFERENCES article(idarticle) ON DELETE SET NULL,
    CONSTRAINT contrainte_Publier PRIMARY KEY(idpersonnel,idarticle)
    );

CREATE TABLE PublierExterne(
    idauteurexterne varchar(4) REFERENCES AuteurExterne(idAuteurExterne) ON DELETE SET NULL PRIMARY KEY,
    idarticle varchar(4) REFERENCES article(idarticle) ON DELETE SET NULL PRIMARY KEY,
    CONSTRAINT contrainte_PublierExt PRIMARY KEY(idauteurexterne,idarticle)   
    );

CREATE TABLE AuteurExterne(
    idAuteurExterne varchar(4) PRIMARY KEY,
    nom varchar(20),
    prénom varchar(20),
    adresseEmail varchar(50),
    idLaboratoirExterne varchar(4) REFERENCES LaboratoireExterne(idLaboratoireExterne) ON DELETE SET NULL);*/



--SELECT * FROM personnel;

INSERT INTO personnel VALUES ('P001','Arnal','Clémence','2015','12/05/2000','cite');
INSERT INTO personnel VALUES ('P002','Jullien','Tom','2016','21/06/1999','INSA');
