const wasmModule = require('./fibonacci.js');

// Start Timer
const start = process.hrtime();

wasmModule().then((instance) => {

    const result = instance._fibonacci();

    // End Timer
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
    console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);

    // console.log(result);
});