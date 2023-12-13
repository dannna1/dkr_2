const
  ARRAY_SIZE = 10;
type
  IntArray = array[1..ARRAY_SIZE] of integer;
var
  arr: IntArray;
  searchElement: integer;
  i: integer;
  isFound: boolean;
begin
  for i:= 1 to ARRAY_SIZE do
  begin
    Writeln('Введите массив:');
    Read(arr[i]);
  end;
  WriteLn;
  Write('Введите элемент для поиска: ');
  ReadLn(searchElement);
  isFound := false;
  for i := 1 to ARRAY_SIZE do
  begin
    if arr[i] = searchElement then
    begin
      isFound := true;
      Break;
    end;
  end;
  if isFound then
    WriteLn('Элемент ', searchElement, ' найден в массиве.')
  else
    WriteLn('Элемент ', searchElement, ' не найден в массиве.');

end.
