var
  str: string;
  i, l: integer;
  P: boolean;
begin
  write('Введите строку: ');
  readln(str);
  l:= Length(str);
  P:= true;
  for i:= 1 to l div 2 do
  begin
    if (LowerCase(str[i]) <> LowerCase(str[l - i + 1])) then
    begin
      P:= false;
      break;
    end;
  end;
  if P then
    writeln('Строка является палиндромом')
  else
    writeln('Строка не является палиндромом');
end.
