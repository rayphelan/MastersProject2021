const start = process.hrtime();

const factorial = require('./factorial.js');

factorial().then(() => {
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});
