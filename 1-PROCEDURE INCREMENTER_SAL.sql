CREATE OR REPLACE PROCEDURE INCREMENTER_SALAIRE (p_empno emp.empno%type, p_pourcentage number) 
is 
nbemp number; 
old_sal emp.sal%type;
new_sal emp.sal%type;
BEGIN 

select count(*) into nbemp from emp where EMPNO=p_empno;
if nbemp = 0 THEN
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE NOT FOUND!!');
ELSE
    select sal into old_sal from EMP where EMPNO=p_empno;
    UPDATE EMP
    SET SAL= SAL*(1+p_pourcentage/100)
    where EMPNO=p_empno;
    if SQL%ROWCOUNT =1 THEN 
        DBMS_OUTPUT.PUT_LINE('UPDATE OK');
        select sal into new_sal from EMP where EMPNO=p_empno;
        DBMS_OUTPUT.PUT_LINE(p_empno||' ancien salaire est: '||old_sal||' nouveau sal: '||new_sal);
        
    END IF;
    
END IF;

END;
