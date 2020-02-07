program swalayan;

var
uang: longint;
i: integer;

begin
    write('Masukkan total belanjaan Anda : '); readln(uang);
    uang:= uang - uang mod 25;
    writeln('Harga yang harus Anda bayar : ', uang);
end.