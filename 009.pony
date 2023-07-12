actor Main
  new create(env: Env) =>
    try
      let input: String = "27\n437 270 286\n939 403 422\n3030 1828 932\n343 702 526\n196 316 165\n564 963 642\n688 1391 745\n956 672 1649\n274 931 527\n1803 928 2932\n385 757 597\n1918 528 1012\n358 542 242\n289 516 1166\n569 1629 815\n585 876 435\n874 2495 1128\n307 134 231\n346 721 269\n764 1795 402\n944 987 2276\n370 175 270\n487 311 616\n198 197 331\n3709 877 1698\n303 588 178\n837 712 2034"
      checkTrianglePossibility(input)
    else
      env.out.print("Error: Invalid input")
    end

  fun checkTrianglePossibility(str: String) =>
    let lines: Array[String] = str.split("\n")
    let numTrios: I32 = lines(0).to_i32().unwrap()

    var results: Array[I32] = Array[I32].empty
    for i in 1..numTrios do
      let lengths: Array[String] = lines(i).split(" ")
      let A: I32 = lengths(0).to_i32().unwrap()
      let B: I32 = lengths(1).to_i32().unwrap()
      let C: I32 = lengths(2).to_i32().unwrap()

      let isPossible: Bool = isTrianglePossible(A, B, C)
      results.push(if isPossible then 1 else 0 end)
    end

    env.out.print(results.join(" "))

  fun isTrianglePossible(A: I32, B: I32, C: I32): Bool =>
    A + B > C and A + C > B and B + C > A

actor MainCreate
  new create(env: Env) =>
    try
      Main(env)
    else
      env.out.print("Error: Failed to create Main actor")
    end
