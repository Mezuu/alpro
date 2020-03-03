var i, j, x : integer;
begin
    write('Masukkan input : '); readln(x);
    for i:= 1 to x do
        for j:= 1 to x do
        begin
            if (i + j) mod 2 = 0 then write('#') else write('0');
            if j = x then writeln;
        end;;
end.