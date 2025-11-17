declare
cursor zone1 is SELECT * from emp;
ligne zone1%rowtype;
begin 
open zone1;
loop
  FETCH zone1 into ligne;
  exit when (zone1%notfound);
  if (ligne.hiredate between '01/01/1980' and '01/01/2024')THEN
  DBMS_OUTPUT.put_line('employes ancientes entre 5 et 10:'||ligne.ename);
  end if;
  end loop;
  close zone1;
end;