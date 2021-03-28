const wasmModule = require('./subsetSum.js');

const arraySize = 10000;

// Start Timer
const start = process.hrtime();

wasmModule().then((instance) => {

    instance._subsetSum(arraySize);

    // End Timer
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});