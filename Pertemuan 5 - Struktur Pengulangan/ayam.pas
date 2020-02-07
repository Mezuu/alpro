program anak_ayam;

var
n: integer;

begin
    write('Masukkan anak ayam : '); readln(n);

    while n>=1 do
    begin
        write('Anak ayam turun ',n,', mati satu tinggal ');
        if n <> 1 then writeln(n-1)
        else writeln('induknya');
        n:= n-1
    end;
end.