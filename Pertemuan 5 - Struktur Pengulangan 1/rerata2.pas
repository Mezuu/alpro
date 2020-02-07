program rata_rata2;

var
n,i,x: integer;
sum: longint;

begin
    write('Masukkan n : '); readln(n);
    repeat
        write('Masukkan bilangan ke-',i+1,' : '); readln(x);
        if x mod 2 = 0 then sum:= sum+x;
        i:=i+1;
    until (i>=n);
    writeln('Hasil = ',sum);   
end.