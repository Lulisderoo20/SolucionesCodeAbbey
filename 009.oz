declare
  fun {CheckTrianglePossibility Str}
    local
      Lines = string.tokens(Str "\n")
      NumTrios = string.toInt(hd(Lines))
      Results = []
    in
      for I = 1 to NumTrios do
        local
          Lengths = string.tokens(nth(Lines I) " ")
          A = string.toInt(hd(Lengths))
          B = string.toInt(nth(Lengths 2))
          C = string.toInt(nth(Lengths 3))
          IsPossible = {IsTrianglePossible A B C}
        in
          Results = Results @ [IsPossible|0]
        end
      end
      {Browse List.toString(Results)}
    end

  fun {IsTrianglePossible A B C}
    A + B > C andalso A + C > B andalso B + C > A
  end
in
  {CheckTrianglePossibility "28\n245 333 204\n481 864 272\n597 451 527\n2518 1033 817\n102 251 120\n106 143 157\n853 1013 2497\n962 1811 2510\n638 373 189\n1484 344 678\n1359 780 572\n717 878 1882\n1235 3063 624\n1529 1367 800\n608 234 337\n709 222 391\n1949 875 1201\n179 574 245\n1437 647 533\n1195 445 509\n346 656 217\n459 465 587\n895 448 1153\n105 181 315\n1295 388 650\n2214 565 1078\n278 304 547\n3355 928 1774"}
end
