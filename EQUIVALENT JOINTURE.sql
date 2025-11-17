DECLARE 
CURSOR zone1 is select * from EMP11;
CURSOR zone2 is select * from DEPT;
enrg1 zone1%ROWTYPE;
enrg2 zone2%ROWTYPE;
BEGIN 
OPEN zone1;
LOOP
FETCH zone1 into enrg1;
EXIT WHEN(zone1%NOTFOUND);
    open zone2;
    LOOP 
        FETCH zone2 into enrg2;
        EXIT WHEN(zone2%NOTFOUND);
        IF (enrg1.DEPTNO=enrg2.DEPTNO) THEN 
            DBMS_OUTPUT.PUT_LINE(enrg1.ENAME||' '||enrg2.DNAME);
        END IF ;
    END LOOP;
    CLOSE zone2;
END LOOP;
CLOSE zone1;
END;
