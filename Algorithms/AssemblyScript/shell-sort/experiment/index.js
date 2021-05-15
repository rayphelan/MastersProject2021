const myModule = require("..");

// Begin timer
const start = process.hrtime();

const result = myModule.shellSort();

// End timer
const diff = process.hrtime(start);
console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);

// console.log(result);