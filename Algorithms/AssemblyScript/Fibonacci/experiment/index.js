const myModule = require("..");

// Begin timer
const start = process.hrtime();

const result = myModule.fibonacci(40);

// End timer
const diff = process.hrtime(start);
console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);

console.log(result);