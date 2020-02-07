program tomorrow_yesterday;
uses sysutils;

Type
day = (Mon, Tue, Wed, Thu, Fri, Sat, Sun);

var
x: day;

begin
    write('Masukkan hari ini (Mon/Tue/Wed/Thu/Fri/Sat/Sun) : '); readln(x);
    writeln('Kemarin adalah hari ', day((ord(x) + 6) mod 7));
    writeln('Besok adalah hari ', day((ord(x) + 1) mod 7));
end.