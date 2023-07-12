function fahrenheitToCelsius(str) {
    let values = str.split(" ");
    let n = parseInt(values[0]);

    let results = [];
    for (let i = 1; i <= n; i++) {
        let fahrenheit = parseInt(values[i]);
        let celsius = Math.round((fahrenheit - 32) * (5 / 9));
        results.push(celsius);
    }

    console.log(results.join(" "));
}
fahrenheitToCelsius(input);
