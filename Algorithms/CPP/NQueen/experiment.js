const wasmModule = require('./nQueen.js');
const fs = require('fs');

const results = [];
const iterations = 120;

wasmModule().then((instance) => {

    for (n = 1; n <= iterations; n++) {

        // Start Timer
        const start = process.hrtime();

        // Run WASM
        instance._nQueen();

        // End Timer
        const diff = process.hrtime(start);

        // Log Results
        const result = (diff[0] * 1e9 + diff[1])/1000000000;
        results.push(result);
        console.log(n, result);

        // console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
        // console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);

    }

    console.log(results);

    // Save to CSV
    const csv = results.join('\n');

    // Write File
    fs.writeFile('results.csv', csv, function (err) {
        if (err) return console.log(err);
        console.log('Filesaved');
    });
});
