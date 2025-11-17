CREATE OR REPLACE FUNCTION calcul_salaire(numemp  NUMBER)
return number AS
NBEMP NUMBER;
ligne emp%rowtype;
begin
select COUNT(*) INTO NBEMP from EMP WHERE empno=numemp;
IF(NBEMP=0)then
DBMS_OUTPUT.PUT_LINE('EMPLOYE INEXISTANT');
ELSE
select * into ligne from EMP WHERE empno=numemp;
if(ligne.comm is null)then
 return ligne.sal;
else
 return ligne.sal+ligne.comm;
end if;
end if;
end;