const wasmModule = require('./bubbleSort.js');

// Start Timer
const start = process.hrtime();

wasmModule().then((instance) => {

    instance._bubbleSort();

    // End Timer
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
    console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);
});