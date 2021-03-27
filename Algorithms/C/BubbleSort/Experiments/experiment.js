const bubbleSort = require('./bubbleSort.js');

const start = process.hrtime();

bubbleSort().then(() => {
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});