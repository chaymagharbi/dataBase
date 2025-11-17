CREATE OR REPLACE PROCEDURE transfert(depanc IN NUMBER,depnouv IN NUMBER)
is 
nbdep1 number;
nbdep2 number;
begin
select COUNT(*) INTO nbdep1 from DEPT WHERE deptno=depanc;
select COUNT(*) INTO nbdep2 from DEPT WHERE deptno=depnouv;
IF(nbdep1=0 OR nbdep2 =0)then
DBMS_OUTPUT.PUT_LINE('departement inexistant');
ELSE
update EMP
set deptno=depnouv
where deptno=depanc;
DBMS_OUTPUT.PUT_LINE('le nombre de transfert es'||SQL%rowcount);
end if;
end;