CREATE OR REPLACE  PROCEDURE TRANSFERT(old_deptno EMP.deptno%type,
new_deptno EMP.deptno%type)
is 
nbnew number:=0;
nbold number:=0;
BEGIN 
select count(*) into nbnew from DEPT where DEPTNO=new_deptno;
select count(*) into nbold from DEPT where DEPTNO=old_deptno;
IF nbnew=0 OR nbold=0 THEN
    DBMS_OUTPUT.PUT_LINE('ERREUR DEPTNO');
ELSE 
    UPDATE EMP 
    SET DEPTNO=new_deptno
    where DEPTNO=old_deptno;
    DBMS_OUTPUT.PUT_LINE('Le nombre des employee est '|| SQL%ROWCOUNT);
END IF;
END;