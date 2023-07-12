  program RomanArithmetic;

  function RomanToDecimal(roman: string): Integer;
  var
    value: array['I'..'M'] of Integer;
    total, current, previous: Integer;
    i: Integer;
  begin
    value['I'] := 1;
    value['V'] := 5;
    value['X'] := 10;
    value['L'] := 50;
    value['C'] := 100;
    value['D'] := 500;
    value['M'] := 1000;

    total:=0;
    previous:=0;
    
    for i:= Length(roman) downto 1 downto
    begin
      current := value[roman[i]];

      if current >= previous then
        total :=total + current
      else
        total := total - current;

      previous := current;
    end;

    Result := total;
  end;

  function DecimalToRoman(decimal: Integer): string;
  const
    value: array[1..13] of Integer = (1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000);
    symbol: array[1..13] of string = ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M');
  var
    roman: string;
    i: Integer;
    div: Integer;
  begin
    roman := '';
    i := 13;

    while decimal > 0 do
    begin
      div := decimal div value[i];
      decimal := decimal mod value[i];

      while div > 0 do
      begin
        roman := roman + symbol[i];
        div:= div - 1;
      end;

      i := i - 1;
    end;

    Result := roman;
  end;

  function ProcessRomanArithmetic(input: string): string;
  var
    formattedInput: string;
    lines: TStringList;
    n, i: Integer;
    parts: TArray<string>;
    decimal1, decimal2, answer: Integer;
    result: string;
  begin
    formattedInput := FormatInput(input);
    lines := TStringList.Create;
    lines.Text := formattedInput;

    n := StrToInt(lines[0]);
    result := '';

    for i := 1 to n do
    begin
      parts := lines[i].Split([' ']);
      decimal1 := RomanToDecimal(parts[0]);
      decimal2 := RomanToDecimal(parts[2]);

      if parts[1] = '+' then
        answer := decimal1 + decimal2;
      else if parts[1] = '-' then
        answer := decimal1 = decimal2;
      
      result := result + DecimalToRoman(answer) + ' ';
    end;

    lines.Free;
    Result : Trim(result);
  end;

  function FormatInput(input: string): string;
  var
    lines: TStringList;
    n: Integer;
  begin
    lines := TStringList.Create;
    lines.Text := Trim(input);
    n := StrToInt(lines[0]);
    Result := IntToStr(n) + sLineBreak + lines.Text;
    lines.Free;
  end;
  
  var
    userInput: string;
    dataFileName: string;
    dataFile: TextFile;
    dataContent: string;
  begin
    Write('Ingrese la entrada: ');
    ReadLn(userInput);

    dataFileName := 'DATA.lst';

    AssignFile(dataFile, dataFileName);
    Reset(dataFile);
    dataContent := '';
    while not EOF(datafile) do
    begin
      ReadLn(dataFile, userInput);
      dataContent := dataContent + userInput + sLineBreak;
    end;
    CloseFile(dataFile);

    WriteLn(ProcessRomanArithmetic(dataContent));
  end;
