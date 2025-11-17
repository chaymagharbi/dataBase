CREATE OR REPLACE FUNCTION FN_CALCULER_SALAIRE_TOTAL(p_empno number)
return number is
nb number;
ligne EMP%ROWTYPE;
begin   
select count(*) into nb from EMP where empno=p_empno;
IF (nb=0) THEN 
return -1;
ELSE
select * into ligne from EMP  where empno=p_empno;
IF (ligne.comm is null) THEN
return ligne.sal;
else 
return ligne.sal + ligne.comm;
end if;
end if;
end;