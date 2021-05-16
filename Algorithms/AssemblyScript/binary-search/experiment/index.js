const myModule = require("..");
const fs = require('fs');

const results = [];
const iterations = 30;

for (n = 1; n <= iterations; n++) {

    // Begin timer
    const start = process.hrtime();

    // Run WASM
    const wasm = myModule.binarySearch();

    // End timer
    const diff = process.hrtime(start);

    // Log Results
    const result = (diff[0] * 1e9 + diff[1])/1000000000;
    results.push(result);
    console.log(n, result);

    // console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
    // console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);
    // console.log(wasm);
}

console.log(results);

// Save results to file
fs.writeFile('results.txt', results.toString(), function (err) {
    if (err) return console.log(err);
    console.log('Filesaved');
});