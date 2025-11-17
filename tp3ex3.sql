/*create table ratio (numlig number,x number,y number);
create table resultat(numlig number,ratio number);
insert into ratio values(1,68,100);
insert into ratio values(2,65,87);
insert into ratio values(3,45,42);
insert into ratio values(4,0,125);
insert into ratio values(5,156,78);
insert into ratio values(6,12,null);
insert into ratio values(7,146,230);
insert into ratio values(8,56,25);
insert into ratio values(9,134,85);*/
/* ecrire un script qui calcule le rapport entre colonne x et colonne y (x/y) de la table ratio ,si le rapport est superieur a 0.72 
on l'insere dans le table resultat sinon on insere -1 si le denominateur (diviseur) est null ou egale a 0,on insere -2 */
declare
cursor zone1 is SELECT * from ratio;
begin 
for enrg in zon1 loop 
if enrg.y is null or enrg.y=0 then
s:=-2;
insert into resultat values(enrg.numlig,s);
else
s:=enrg.x/enrg.y;
if s>=0.72 then
  insert into resultat values(enrg.numlig,s);

end;