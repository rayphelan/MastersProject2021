const wasmModule = require('./heapSort.js');

const arraySize = 10;

// Start Timer
const start = process.hrtime();

wasmModule().then((instance) => {

    instance._heapSort(arraySize);

    // End Timer
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});