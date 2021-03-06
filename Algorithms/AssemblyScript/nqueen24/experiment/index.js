const myModule = require("..");
const fs = require('fs');

const results = [];
const iterations = 120;

for (n = 1; n <= iterations; n++) {

    const { __getString } = myModule;

    // Begin timer
    const start = process.hrtime();

    // Run WASM
    const wasm = myModule.nQueen();

    // End timer
    const diff = process.hrtime(start);

    // Log Results
    const result = (diff[0] * 1e9 + diff[1])/1000000000;
    results.push(result);
    

    // console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
    // console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);
    console.log(__getString(wasm));
    console.log(n, result);
}

console.log(results);

// Save to CSV
const csv = results.join('\n');

// Write File
fs.writeFile('results.csv', csv, function (err) {
    if (err) return console.log(err);
    console.log('Filesaved');
});
