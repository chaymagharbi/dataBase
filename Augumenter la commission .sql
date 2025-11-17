DECLARE 
choix  number;
BEGIN
choix:='&Vchoix';
IF  (choix=1) THEN
UPDATE EMP12
SET COMM=1.1*COMM;
ELSE IF (choix=2) THEN
UPDATE EMP12 
SET COMM =0.9*COMM;
ELSE IF (choix=3) THEN
UPDATE EMP12
SET COMM=0 where sal between 2000 and 3000;
ELSE 
DBMS_OUTPUT.PUT_LINE('Erreur de Saisie');
END IF; 
END IF;
END IF;

END;