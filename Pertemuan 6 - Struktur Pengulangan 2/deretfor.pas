program deret_for;

var
n, i: integer;
sum: longint;

begin
    write('Masukkan n : '); readln(n);
    for i:= 1 to n do sum:= sum+i;
    writeln('Hasilnya ', sum);
end.