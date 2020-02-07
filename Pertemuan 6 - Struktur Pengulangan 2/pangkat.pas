program pangkat;
uses sysutils;

var
a, n, i: integer;
res: real = 1;

begin
    writeln('Program a^n');
    write('Masukkan a : '); readln(a);
    write('Masukkan n : '); readln(n);
    for i:=1 to abs(n) do
    begin
        if n > 0 then res:= res*a
        else if n = 0 then res:= 0
        else res:= res/a;
    end;
    write(a, '^', n, ' = ', floattostr(res));
end.