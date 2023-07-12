actor Main
  new create(env: Env) =>
    // Aquí colocas el código convertido a Pony
    let input = env.stdin.read().string()?
    let lines = input.split("\n")
    var output: String = ""
    for i in 0..lines.length() - 1 do
      if i == 0 then continue end
      var line = lines(i).split(" ")
      var lineMin = ""
      for n in line.values() do
        lineMin = (lineMin.toInt()? < n.toInt()?) ? lineMin : n
      end
      output = output + lineMin + " "
    end
    env.out.print(output)
