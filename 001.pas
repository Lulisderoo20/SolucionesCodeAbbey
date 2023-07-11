program sumTwoNumbers;

var
  s: array [1..2] of string;
  i, num1, num2: integer;

begin
  for i := 1 to 2 do
  begin
    readln(s[i]);
  end;
  
  val(s[1], num1);
  val(s[2], num2);

  writeln(num1 + num2);
end.
