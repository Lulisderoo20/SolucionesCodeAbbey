function findLinearFunction(str) {
    let lines = str.split("\n");
    let numCases = parseInt(lines[0]);

    let results = [];
    for (let i = 1; i <= numCases; i++) {
        let values = lines[i].split(" ");
        let x1 = parseInt(values[0]);
        let y1 = parseInt(values[1]);
        let x2 = parseInt(values[2]);
        let y2 = parseInt(values[3]);

        let a = (y2 - y1) / (x2 - x1);
        let b = y1 - a * x1;
        results.push(`(${a} ${b})`);
    }

    console.log(results.join(" "));
}

findLinearFunction(input);
