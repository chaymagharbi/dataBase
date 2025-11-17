DECLARE
p_empno EMP.empno%TYPE;
p_pour number;
BEGIN
p_empno:='&Vp_empno';
p_pour:='&Vp_pour';
INCREMENTER_SAL(p_empno,p_pour);

END;