CREATE OR REPLACE PROCEDURE somme(x number,y number ) IS
begin
DBMS_OUTPUT.PUT_LINE('LA SOMME ='||x+y);
end;
