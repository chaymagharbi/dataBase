CREATE TABLE departement
(numdep NUMBER PRIMARY KEY,
nomdep VARCHAR2,
CONSTRAINT ck_1 CHECK (numdep >100) 
);
CREATE TABLE che
(chef NUMBER PRIMARY KEY);
CREATE TABLE employe
(idemp NUMBER PRIMARY key,
nom VARCHAR2,
prenom VARCHAR2,
date_naissance DATE,
adresse VARCHAR2,
salaire NUMBER DEFAULT=1000000,
numdep NUMBER,
chef NUMBER,
CONSTRAINT fk_1 FOREIGN KEY numdep REFERENCES TO departement(numdep),
CONSTRAINT fk_2 FOREIGN KEY chef REFERENCES TO che(chef)
);
//afficher chaque tableau
select * from departement;
select * from employe;
select * from chef;
INSERT INTO departement(101,'recherche');
INSERT INTO departement(102,'informatique');
INSERT INTO departement(103,'reseaux');
INSERT INTO departement(104,'developpment');
INSERT INTO employe(1,'annabi','farhat',03/01/2005,null,1500000,102,3);
INSERT INTO employe(2,'werghi','salim',21/04/1987,'ben_arouss',1500000,102,3);
INSERT INTO employe(3,'mrabet','amine',09/11/1977,null,2350900,102,4);
INSERT INTO employe(4,'said','amira',02/07/1980,null,2500800,101,4);
INSERT INTO employe(5,'khsibi','kamel',14/09/2000,null,1500500,103,4);
//afficher contenu tableau
select * from departement;
select * from employe;
select * from chef;

SELECT idemp,date_naissance,adresse FROM employe WHERE nom='salim' and prenom='werghi';
SELECT nom,adresse FROM employe WHERE (select nomdep from departement where nomdep='informatique') ;
SELECT nom,prenom FROM employe WHERE (chef=3);




