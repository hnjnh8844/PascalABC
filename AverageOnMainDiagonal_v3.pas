program GenerateRandomMatrix;
uses crt;
var
  i, j, n: integer;  // ����� ��� ������� � ������ �������
  matrix: array of array of integer;  // ��������� ����� ��� �������
begin
  clrscr;  // ������� �����

  // �������� ������ �������
  write('������ ����� ������� n: ');
  readln(n);

  // ���������� ������� ������ n x n
  setlength(matrix, n, n);

  // ��������� ���������� ������� ��� �������� �������
  randomize;  // ������������ ���������� ���������� �����
  writeln('����������� �������:');
  for i := 0 to n-1 do  // ���� �� ������ �������
  begin
    for j := 0 to n-1 do  // ���� �� �������� �������
    begin
      matrix[i][j] := random(401) - 200;  // ��������� ����� � �������� �� -200 �� 200
      write(matrix[i][j]:5);  // ��������� ������������� �����
    end;
    writeln;  // ������� �� ����� ����� ���� ��������� ������� ����� �������
  end;

  readln;  // ���������� ���������� ������ ����� ����������� ��������
end.