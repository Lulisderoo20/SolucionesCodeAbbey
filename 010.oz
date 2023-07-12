declare
  fun {FindLinearFunction Str}
    local
      Lines = String.split(Str "\n")
      NumCases = tonumber(List.hd(Lines))
      Results = []
    in
      for I = 1 to NumCases do
        local
          Values = String.split(List.nth(Lines I) " ")
          X1 = tonumber(List.nth(Values 1))
          Y1 = tonumber(List.nth(Values 2))
          X2 = tonumber(List.nth(Values 3))
          Y2 = tonumber(List.nth(Values 4))
          A = (Y2 - Y1) / (X2 - X1)
          B = Y1 - A * X1
        in
          Results = Results @ [{A B}]
        end
      end
      {Browse String.join(Results " ")}
    end
  in
    {FindLinearFunction "15\n-543 -50669 506 48986\n-692 -51174 365 28101\n826 20409 -64 -951\n332 -23883 -38 3127\n182 16612 -942 -85672\n112 -6602 133 -7904\n-37 3910 -260 22865\n280 -7938 -103 2786\n369 -31317 143 -12559\n738 25783 531 18538\n-767 42021 706 -38994\n-684 -18059 116 2741\n977 21106 305 6994\n459 24648 614 33173\n341 -24162 -486 32901"}
end
