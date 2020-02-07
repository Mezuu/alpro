program fotokopi;
uses sysutils;

var
n: integer;

begin
    writeln('TABEL HARGA FOTOKOPI');
    writeln('|---------|--------|');
    writeln('|LEMBAR   |HARGA   |');
    writeln('|---------|--------|');
    repeat
        n:= n+1;
        writeln('|', n, space(9 - length(inttostr(n)) ), '|', n*125, space(8 - length(inttostr(n*125))), '|');
    until (n=100);
    writeln('|---------|--------|');
end.