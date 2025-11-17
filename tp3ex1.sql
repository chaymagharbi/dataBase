declare
cursor zone1 is SELECT * from emp;
ligne zone1%rowtype;
begin 
open zone1;
loop
  FETCH zone1 into ligne;
  exit when (zone1%notfound);
  DBMS_OUTPUT.put_line('sal='||ligne.sal);
  end loop;
  close zone1;
end;