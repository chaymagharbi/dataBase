DECLARE 
CURSOR zone1 is select * from RATIO;
enrg RATIO%ROWTYPE;
rr number;
BEGIN 
Open zone1;
Loop
    FETCH zone1 into enrg;
    EXIT WHEN (zone1%NOTFOUND);
    IF (enrg.Y=0 or enrg.Y is null)THEN 
        rr:=-2;
    ELSE IF(enrg.X/enrg.Y>0.72) THEN 
        rr:=-1;
    ELSE 
        rr:=enrg.X/enrg.Y;
    END IF;
    END IF;
    insert into resultat values (enrg.numlig,rr);
END LOOP;
CLOSE zone1;
END;
