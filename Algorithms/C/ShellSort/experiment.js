const wasmModule = require('./shellSort.js');

const arraySize = 10;

// Start Timer
const start = process.hrtime();

wasmModule().then((instance) => {

    instance._shellSort(arraySize);

    // End Timer
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});