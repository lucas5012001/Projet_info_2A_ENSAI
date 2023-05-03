DROP TABLE IF EXISTS commune CASCADE;
CREATE TABLE commune (
id_commune VARCHAR(20) NOT NULL PRIMARY KEY,
nom_commune VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS parcelle CASCADE;
CREATE TABLE parcelle (
id_parcelle VARCHAR(20) NOT NULL PRIMARY KEY,
id_commune VARCHAR(20) NOT NULL REFERENCES commune(id_commune) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS commune_contigue CASCADE;
CREATE TABLE commune_contigue (
id_commune1 VARCHAR(20) NOT NULL REFERENCES commune(id_commune) ON DELETE CASCADE ON UPDATE CASCADE,
id_commune2 VARCHAR(20) NOT NULL REFERENCES commune(id_commune) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (id_commune1, id_commune2)
);

DROP TABLE IF EXISTS annee CASCADE;
CREATE TABLE annee (
annee VARCHAR(20) NOT NULL PRIMARY KEY
);

DROP TABLE IF EXISTS departements CASCADE;
CREATE TABLE departements (
departement VARCHAR(20) NOT NULL PRIMARY KEY
);