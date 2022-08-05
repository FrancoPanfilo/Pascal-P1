program pruebarango;
TYPE Vocal = (a, e, i, o, u);
VAR letra : Vocal; 
    uncar : Char;
begin
    letra := a;
    WHILE letra <= u DO
        BEGIN 
        read (uncar);
        writeLn ('El caracter leido es: ', uncar);
        letra := succ (letra);
        writeLn('letra ',letra)
        END;
    read(letra)
end.