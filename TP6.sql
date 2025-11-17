CREATE TABLE segment1
( indIP VARCHAR2(11) primary key,
nomSegment VARCHAR2(20)not null,
etage number(2));
create table salle 
(nsalle VARCHAR2(7) PRIMARY key,
nomSalle varchar2(20) not null,
nbposte number(2),
indIP VARCHAR2(11),
constraint FK_ind FOREIGN KEY(indIP) REFERENCES segment1 (indIP));
create table poste 
(nposte VARCHAR2(7) primary KEY,
nomposte VARCHAR2(20)not NULL,
indIP VARCHAR2(11),
ad VARCHAR2(3),
typeposte VARCHAR2(9),
nsalle VARCHAR2(7),
constraint FK_p1 FOREIGN KEY(indIP) REFERENCES segment1 (indIP),
constraint FK_p2 FOREIGN KEY(nsalle) REFERENCES salle (nsalle),
constraint ck_p CHECK(ad BETWEEN 0 AND 255));
create table logici