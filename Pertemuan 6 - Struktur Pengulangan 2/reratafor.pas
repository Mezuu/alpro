program ratarata_for;

var
n, i, x: integer;
sum: real;

begin
    write('Masukkan n : '); readln(n);
    for i:= 1 to n do
    begin
        write('Masukkan bilangan ke-', i, ' : '); readln(x);
        sum:= sum+x;
    end;
    writeln('Rata ratanya adalah ', (sum/n):0:2);
end.