program fibonacci;

var
a: array [1 .. 100] of integer;
i, n: integer;

begin
    a[1]:= 2;
    a[2]:= 3;
    write('Masukkan n : '); readln(n);
    for i:= 1 to n do
    begin
        a[i+2]:= a[i] + a[i+1];
        write(a[i], ' ');
    end;
end.