program bintang;

var
n, i, j: integer;

begin
    write('Masukkan n : '); readln(n);
    for i:= 1 to n do for j:= 1 to i do 
    begin
        write('*');
        if j = i then writeln;
    end;;
end.