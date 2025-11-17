declare
numemp EMP.EMPNO%type;
s number;
begin
numemp :=7839;
s:=calcul_salaire(numemp);
if s=-1 then
DBMS_OUTPUT.PUT_LINE('erreur');
else
DBMS_OUTPUT.PUT_LINE(s);
end if;
end;