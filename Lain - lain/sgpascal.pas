var a, b, i, n, r, l, x: longint; z: real;

begin
    write('Masukkan angka : '); readln(x);
    //baris
    for n:= 0 to x-1 do
    begin
        for l:= n to x-1 do write(' ');
        for r:= 0 to n do
        begin
            if (r=0) or (r=n) then z:= 1 else
            begin
                //kombinasi
                a:= 1;
                b:= 1;
                for l:= 1 to n do a:= a*l;
                for l:= 1 to n-r do b:= b*l;
                for l:= 1 to r do b:= b*l;
                z:= a/b;
            end; 
            write(z:0:0, ' ');
        end;
        if r = n then writeln;
    end;    
end.