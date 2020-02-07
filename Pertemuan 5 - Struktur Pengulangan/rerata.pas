program rata_rata;

var
n,i,x: integer;
sum: longint;

begin
    write('Masukkan n : '); readln(n);

    repeat
        begin
            write('Masukkan bilangan ke-',i,' : '); readln(x);
            sum:= sum + x;
            i:= i+1
        end;
    until (i = n);

    writeln('Reratanya adalah = ',sum/n);
end.