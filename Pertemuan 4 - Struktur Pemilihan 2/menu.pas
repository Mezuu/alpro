program menu;

label 1000;
var
    option: char;

begin
1000:
    writeln('1. Baca data');
    writeln('2. Cetak data');
	writeln('3. Ubah data');
	writeln('4. Hapus data');
	writeln('5. Keluar program');
    write('Masukkan pilihan Anda : '); readln(option);
    writeln('Anda memilih menu nomor ', option);

    write('Apakah ingin lagi? (Y/N)'); readln(option);
    case option of
        'y', 'Y': goto 1000;
    end;
end.