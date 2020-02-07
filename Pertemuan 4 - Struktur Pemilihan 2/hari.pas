program hari;

var
angka: integer;

begin
    write('Masukkan angka : '); readln(angka);
    write('Hari ini hari ');
    case angka of
        1: writeln('Ahad');
        2: writeln('Senin');
        3: writeln('Selasa');
        4: writeln('Rabu');
        5: writeln('Kamis');
        6: writeln('Jumat');
        7: writeln('Sabtu');
    end;
    readln
end.