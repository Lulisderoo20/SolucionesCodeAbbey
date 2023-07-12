function calculateArithmeticSum(str)
    local lines = {}
    for line in str:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end
    local numCases = tonumber(lines[1])

    local results = {}
    for i = 2, numCases + 1 do
        local values = {}
        for value in lines[i]:gmatch("%S+") do
            table.insert(values, tonumber(value))
        end
        local A = values[1]
        local B = values[2]
        local N = values[3]

        local sum = (N / 2) * (2 * A + (N - 1) * B)
        table.insert(results, sum)
    end

    print(table.concat(results, " "))
end

local input = "8\n7 2 60\n13 9 16\n23 8 75\n4 1 14\n14 12 12\n7 12 75\n26 8 54\n26 3 29"
calculateArithmeticSum(input)
