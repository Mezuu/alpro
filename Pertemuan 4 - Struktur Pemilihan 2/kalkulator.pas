program kalkulator;

var
operand: string;
x, y: longint;
result: real;

begin
    write('Masukkan angka pertama : '); readln(x);
    write('Masukkan operator (+,-,*,/,^) : '); readln(operand);
    write('Masukkan angka kedua : '); readln(y);

    case operand of
        '+': result:= x+y;
        '-': result:= x-y;
        '*': result:= x*y;
        '/': result:= x/y;
        //'^': result:= x^y;
    end;

    writeln('Hasil dari ', x, operand, y, ' = ', result);
end.