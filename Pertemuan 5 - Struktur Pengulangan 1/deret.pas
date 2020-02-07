program deret;

var
n: integer;
res: longint;

begin
    write('Masukkan n : '); readln(n);

    while n>0 do
    begin
        res:= res+n;
        n:= n-1;
    end;
    
    writeln('Hasil = ',res);
    readln
end.