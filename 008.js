function calculateArithmeticSum(str) {
    let lines = str.split("\n");
    let numCases = parseInt(lines[0]);

    let results = [];
    for (let i = 1; i <= numCases; i++) {
        let values = lines[i].split(" ");
        let A = parseInt(values[0]);
        let B = parseInt(values[1]);
        let N = parseInt(values[2]);

        let sum = (N / 2) * (2 * A + (N - 1) * B);
        results.push(sum);
    }

    console.log(results.join(" "));
}

calculateArithmeticSum(input);
