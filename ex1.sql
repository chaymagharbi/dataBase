CREATE OR REPLACE PROCEDURE incremanter_salaire(numemp IN NUMBER, pour in NUMBER) IS
NBEMP NUMBER;
begin
select COUNT(*) INTO NBEMP from EMP WHERE empno=numemp;
IF(NBEMP=0)then
DBMS_OUTPUT.PUT_LINE('EMPLOYE INEXISTANT');
ELSE
UPDATE emp
set sal=sal*(1+pour/100);
WHERE empno=numemp;
IF(sql%rowcount=1)then
DBMS_OUTPUT.PUT_LINE('update ok');
end if;
end if;
end;