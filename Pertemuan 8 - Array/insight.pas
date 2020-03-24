program insight;
uses crt;

var
  x: array[1 .. 1000] of integer;
  n, i, min, max, sum, sqsum: longint;

begin
  clrscr;
  write('Masukkan banyaknya data : '); readln(n);
  for i:= 1 to n do
  begin
    write('Masukkan data ke-', i, ' : '); readln(x[i]);
    if i = 1 then
    begin
      min:= x[i];
      max:= x[i];
    end
    else
    begin
      if x[i] < min then min:= x[i];
      if x[i] > max then max:= x[i];
    end;
    sum:= sum + x[i];
    sqsum:= sqsum + x[i]*x[i];
  end;
  writeln;
  writeln('Min                : ', min);
  writeln('Max                : ', max);
  writeln('Mean               : ', sum/n:0:2);
  writeln('Standart Deviation : ', sqrt((n*sqsum - sum*sum)/(n*(n-1))):0:2);
end.
