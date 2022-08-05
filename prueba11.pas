program ppp;
const MAX=10;
type RTP=record
        info:array[1..MAX] of integer;
        tope:1..MAX
        end;
TP = array [1..MAX] of RTP;
var t:Tp;i,n:integer;
begin
    for i:=1 to MAX do
        begin
            t[i].tope:=i;
            t[i].info[1]:=1;
            t[i].info[i]:=1;
        end;
    for i:=3 to MAX do
        for n:=2 to i-1 do
            begin
                t[i].info[n]:=t[i-1].info[n-1]+t[i-1].info[n];
            end;
    for i:=1 to MAX do
        begin
        for n:=1 to i do
            begin
                write(t[i].info[n])
            end;
            writeLn(' ')
        end;
end;