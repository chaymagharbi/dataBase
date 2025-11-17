declare
cursor zone1 is SELECT * from emp;
cursor zone2 is SELECT deptno,dname from dept;
ligne zone1%rowtype;
empdeptno emp.deptno%type;
vdeptno dept.deptno%type;
vdname dept.dname%type;
begin 
open zone1;
loop
  FETCH zone1 into ligne;
  exit when (zone1%notfound);
  empdeptno:=ligne.deptno;
  open zone2;
  loop 
  FETCH zone2 into vdeptno,vdname;
  exit when (zone2%notfound);
  if(empdeptno=vdeptno)then
  DBMS_OUTPUT.put_line('nom='||ligne.ename||' departement='||vdname);
  end if;
  end loop;
  close zone2;
  end loop;
  close zone1;
end;