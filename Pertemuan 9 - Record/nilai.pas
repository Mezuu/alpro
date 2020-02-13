program nilai_mahasiswa;

const
matkul = 8; //Banyaknya mata kuliah

var
nilai: array[1 .. 1000, 1 .. matkul] of real;
rata: array[1 .. 1000] of real;
insight: array[1 .. 4, 1 .. matkul] of real;
n, i, j: integer;
temp: real;

begin
    write('Masukkan banyaknya mahasiswa : '); readln(n);
    for i:= 1 to n do
    begin
        writeln('Data nilai mahasiswa ke-', i);
        for j:= 1 to matkul do
        begin
            write('Masukkan nilai mata kuliah ke-', j, ' : '); readln(nilai[i,j]);
            temp:= temp+nilai[i,j];
        end;
        rata[i]:= temp/matkul;
    end;

    writeln('Rata - rata nilai mahasiswa # : ');
    for i:= 1 to n do writeln(i, ' : ', rata[i]:0:2); writeln;
    writeln('Insight nilai mata kuliah # : ');
    write('            '); for i:= 1 to matkul do write('    ', i:5);
    writeln;

    // Rata - rata
    for i:= 1 to matkul do
    begin
        insight[1,i]:= 0;
        for j:= 1 to n do insight[1,i]:= insight[1,i] + nilai[j,i];
        insight[1,i]:= insight[1,i]/n
    end;

    // Varian
    for i:= 1 to matkul do
    begin
        insight[2,i]:= 0;
        for j:= 1 to n do insight[2,i]:= (nilai[j,i] - insight[1,i])*(nilai[j,i] - insight[1,i]);
        insight[2,i]:= insight[2,i]/n;
    end;

    // Standar Deviasi
    for i:= 1 to matkul do insight[3,i]:= sqrt(insight[3,i]);

    // Nilai maksimal
    for i:= 1 to matkul do
    begin
    insight[4,i]:= 0;
        for j:= 1 to n do if nilai[j,i] > insight[4,i] then insight[4,i]:= nilai[j,i];
    end;

    // Tulis hasil insight
    // Rata - rata
    write(' Rata - rata     ');
    for i:= 1 to matkul do
    begin
        write('  ', insight[1,i]:5:2, '  ');
        if i = matkul then writeln;
    end;
    // Varian
    write(' Varian          ');
    for i:= 1 to matkul do
    begin
        write('  ', insight[2,i]:5:2, '  ');
        if i = matkul then writeln;
    end;
    // Standar Deviasi
    write(' Standar Deviasi ');
    for i:= 1 to matkul do
    begin
        write('  ', insight[3,i]:5:2, '  ');
        if i = matkul then writeln;
    end;
    // Nilai Maksimal
    write(' Maksimum        ');
    for i:= 1 to matkul do
    begin
        write('  ', insight[4,i]:5:2, '  ');
        if i = matkul then writeln;
    end;
end.