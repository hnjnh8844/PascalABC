program GGGG;
uses crt;

var
A: array[1..10, 1..10] of integer;
n, i, j: integer;
sum: integer;
d: real;

begin
clrscr;

writeln('������ ��������� ������� n (����. 10): ');
readln(n);

writeln('������ �������� �������: ');
for i := 1 to n do
for j:= 1 to n do
begin
write('A[', i, ',', j, ']: ');
readln(A[i, j]);
end;

sum := 0;
for i := 1 to n do
begin
sum := sum + A[i, i];
end;

d := sum / n;

writeln('������ ����������� �������� �� ������� �������: ', d:0:2);

readln;
end.