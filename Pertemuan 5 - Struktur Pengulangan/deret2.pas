program deret2;

var
n,i: integer;
ha: boolean;
sum: double;

begin
    ha:= false;
    sum:= 1;
    i:= 1;
    write('Masukkan nilai n (ganjil positif) : '); readln(n);
    if (n <= 0) or (n mod 2 = 0) then writeln('Maaf ya kita temenan aja')
    else
    begin
        write('1 ');
        repeat
            i:= i+2;
            if ha then
            begin
                write('+ ',(1/i):1:2,' ');
                sum:= sum+1/i;
            end
            else
            begin
                write('- ',(1/i):1:2,' ');
                sum:= sum-1/i;
            end;
            ha:= not ha;
        until (i>=n);

        writeln('= ',sum:1:2);
    end;
end.