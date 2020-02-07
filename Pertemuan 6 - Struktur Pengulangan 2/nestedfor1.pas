{1 2 3 4 5 6 7 8
1 2 3 4 5 6 7
1 2 3 4 5 6
1 2 3 4 5
1 2 3 4
1 2 3
1 2
1
}

program nestedloop1;

var n, i, j: integer;

begin
    write('Masukkan n : '); readln(n);
    for i:= n downto 1 do for j:= 1 to i do
    begin
        write(j, ' ');
        if j=i then writeln;
    end;;
end.