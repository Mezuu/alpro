program umur_mahasiswa_stis;

var
u17, u18, u19, u20, ux, u, n, i: integer;

begin
    write('Masukkan jumlah mahasiswa : '); readln(n);
    if n <= 0 then writeln('Maaf ya kita temenan aja') else
    repeat
    i:= i+1;
        write('Masukkan umur mahasiswa ke-', i, ' : '); readln(u);
        case u of
            17: inc(u17);
            18: inc(u18);
            19: inc(u19);
            20: inc(u20);
            else inc(ux);
        end;
    until (i=n);
    writeln('Jumlah mahasiswa berusia 17 tahun = ', u17);
    writeln('Jumlah mahasiswa berusia 18 tahun = ', u18);
    writeln('Jumlah mahasiswa berusia 19 tahun = ', u19);
    writeln('Jumlah mahasiswa berusia 20 tahun = ', u20);
    writeln('Jumlah mahasiswa berusia selain itu = ', ux);
end.