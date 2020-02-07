program denda_perpus;

const
    c = 3;          // Jumlah buku yang bisa dipinjam
    t_rare = 5;     // Waktu peminjaman buku langka
    t1_rare = 3;    // Waktu lewat jatuh tempo buku langka I
    t2_rare = 4;    // Waktu lewat jatuh tempo buku langka II
    p1_rare = 1000; // Denda lewat jatuh tempo buku langka I
    p2_rare = 2500; // Denda lewat jatuh tempo buku langka II
    p_rare = 5000;  // Denda lewat jatuh tempo buku langka selanjutnya
    t_common = 7;   // Waktu peminjaman buku biasa
    p_common = 500; // Denda lewat jatuh tempo buku biasa

var
    books, days, option, i: integer;
    fine: longint;

begin
    fine:= 0;
    write('Masukkan jumlah buku yang Anda pinjam : '); readln(books);
    if (books <= c) and (books > 0) then
    begin
        for i:=1 to books do
        begin
            writeln('BUKU ',i);
            writeln('Masukkan jenis buku ');
            writeln('1. Biasa');
            writeln('2. Langka');
            write('Masukkan pilihan : '); readln(option);
            if option=2 then
            begin
                write('Masukkan lama waktu Anda meminjam buku (hari): '); readln(days);
                if days >= t_rare then
                begin
                    fine:= fine + (days-t_rare)*p1_rare;
                end;
                if days >= t1_rare then
                begin
                    fine:= fine + (days-t1_rare)*p2_rare;
                end;
                if days >= t2_rare then
                begin
                    fine := fine + (days-t2_rare)*p_rare;
                end;
                writeln();
            end
            else if option=1 then
            begin
                write('Masukkan lama waktu Anda meminjam buku (hari): '); readln(days);
                writeln();
                if days >= t_common then
                begin
                    fine:= fine + (days-t_common)*p_common;
                end;
            end
            else
            begin
                writeln('ERROR, Skipping ..');
            end;
        end;
    end
    else
    begin
        writeln('ERROR, Skipping ...')
    end;

    writeln('Statistik peminjaman buku Perpsustakaan');
    writeln('Jumlah buku yang dipinjam : ', books);
    writeln('Total denda : ', fine);
    readln
end.