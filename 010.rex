def findLinearFunction(str):
    var lines = str.split("\n")
    var numCases = lines[0].toInt()

    var results = []
    for i in 1..numCases do
        var values = lines[i].split(" ")
        var x1 = values[0].toInt()
        var y1 = values[1].toInt()
        var x2 = values[2].toInt()
        var y2 = values[3].toInt()

        var a = (y2 - y1) / (x2 - x1)
        var b = y1 - a * x1
        results.push("(${a} ${b})")

    console.log(results.join(" "))

findLinearFunction(input())
