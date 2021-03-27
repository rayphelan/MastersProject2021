const wasmModule = require('./primeNumber.js');

// const arraySize = 1000000;

// Start Timer
const start = process.hrtime();

wasmModule().then((instance) => {

    instance._primeNumber(200000);

    // End Timer
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});