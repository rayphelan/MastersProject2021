const start = process.hrtime();

const fibonacci = require('./fibonacci.js');

fibonacci().then(() => {
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});
