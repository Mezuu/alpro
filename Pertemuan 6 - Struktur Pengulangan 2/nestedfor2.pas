{1 1 1 1 1 1 1 1
2 2 2 2 2 2 2
3 3 3 3 3 3
4 4 4 4 4
5 5 5 5
6 6 6 
7 7
8
}

program nestedloop2;

var n, i, j, k: integer;

begin
    k:= 1;
    write('Masukkan n : '); readln(n);
    for i:= n downto 1 do
    begin
        for j:= 1 to i do
        begin
            write(k, ' ');
            if j=i then writeln;
        end;
    k:= k+1;
    end;
end.