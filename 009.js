function checkTrianglePossibility(str) {
    let lines = str.split("\n");
    let numTrios = parseInt(lines[0]);

    let results = [];
    for (let i = 1; i <= numTrios; i++) {
        let lengths = lines[i].split(" ");
        let A = parseInt(lengths[0]);
        let B = parseInt(lengths[1]);
        let C = parseInt(lengths[2]);

        let isPossible = isTrianglePossible(A, B, C);
        results.push(isPossible ? 1 : 0);
    }

    console.log(results.join(" "));
}

function isTrianglePossible(A, B, C) {
    return A + B > C && A + C > B && B + C > A;
}

let input = "2\n3 4 5\n1 2 4";
checkTrianglePossibility(input);
