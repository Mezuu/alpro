program data_mahasiswa;

type mhs = record
    nim: string[4];
	nama: string[20];
	prodi: string[20];
	ip: real;
	end;

var 
data: array[1 .. 100] of mhs;
i, n: integer;

begin
    write('Masukkan banyaknya mahasiswa : '); readln(n);
    for i:= 1 to n do with data[i] do
    begin
        writeln('Data mahasiswa ke-', i);
        write('NIM              : '); readln(nim);
        write('Nama 	        : '); readln(nama);
        write('Program Studi    : '); readln(prodi);
        write('IP               : '); readln(ip);
        writeln;
    end;

    writeln('Hasil input data');
    writeln('====================================');
    for i:= 1 to n do with data[i] do
    begin
        writeln;
        writeln('NIM 	        : ',nim);
        writeln('Nama 	        : ',nama);
        writeln('Program Studi  : ',prodi);
        writeln('IP 	        : ',ip:2:2);
    end;
end.