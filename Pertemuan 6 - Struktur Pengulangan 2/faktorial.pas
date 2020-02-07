program faktorial;

var
n, i: integer;
res: longint = 1;

begin
    write('Masukkan n : '); readln(n);
    if n=0 then res:= 1 else
    for i:= 1 to n do res:= res*i;
    writeln(n, '! = ', res);
end.