function roundData(str) {
    let lines = str.split("\n");
    let n = parseInt(lines[0]);

    let results = [];
    for (let i = 1; i <= n; i++) {
        let elements = lines[i].split(" ");
        let num = parseInt(elements[0]);
        let den = parseInt(elements[1]);

        let result = Math.round(num / den);
        results.push(result);
    }

    console.log(results.join(" "));
};

roundData(input);
