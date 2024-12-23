program AverageMainDiagonal;  // ���������� �������� ��� ���������� ���������� ������������� ������� �������
uses crt;  // ϳ��������� ������ ��� ������ � ������� (��������� ��� ������������ clrscr)

var
  i, n: integer;  // �����: i � ��� �����, n � ����� �������
  sum: real;  // ����� ��� ���������� ���� �������� ������� �������
  matrix: array of array of integer;  // ��������� ����� ��� ��������� �������
begin
  clrscr;  // ������� �����

  // �������� ������ �������
  write('������ ����� ������� n: ');  // ��������� ������ ��� �������� ������ �������
  readln(n);  // ������� ������ ������� (n)

  // ���������� ������� ������ n x n
  setlength(matrix, n, n);  // �������� ���'�� ��� ������� ������ n x n

  // �������� �������� �������
  writeln('������ �������� �������:');  // ��������� �����������, ��� ���������� ������ ��������
  for i := 0 to n-1 do  // ���� �� ������ �������
  begin
    for j := 0 to n-1 do  // ���� �� �������� �������
    begin
      write('matrix[', i+1, ',', j+1, ']: ');  // ��������� ������ ��� �������� ��������
      read(matrix[i][j]);  // ������� �������� ������� � ������� (i, j)
    end;
  end;

  // ���������� ���������� ������������� ������� �������
  sum := 0;  // ������������ ����� sum (���� �������� �� �������� �������)
  for i := 0 to n-1 do  // ���� �� �������� �������
  begin
    sum := sum + matrix[i][i];  // ��������� �������� �� �������� ������� (i, i) �� ����
  end;

  // ��������� ����������
  writeln('������� ����������� ������� �������: ', sum / n:0:2);  // ��������� ���������� ������������� � �������� �� 2 ����� ���� ����

  readln;  // ���������� ���������� ������ ��� ���������� ��������
end.