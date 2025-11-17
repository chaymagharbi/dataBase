declare
cursor zone1 is SELECT * from emp;
cursor zone2 is SELECT deptno,dname from dept;
ligne zone1%rowtype;
ligne1 zone2%rowtype;
begin 
open zone1;
open zone2;
loop
  FETCH zone1 into ligne;
  FETCH zone2 into ligne1;
  exit when (zone1%notfound) and (zone2%notfound);
  if(ligne.deptno=ligne1.deptno)then
  DBMS_OUTPUT.put_line('nom='||ligne.ename||' departement='||ligne1.dname);
  end if;
  end loop;
  close zone1;
  close zone2;
end;