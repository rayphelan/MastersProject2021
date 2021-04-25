const myModule = require("..");

const { __getString } = myModule;
console.log(__getString);

// Begin timer
const start = process.hrtime();

const result = myModule.nQueen();

// End timer
const diff = process.hrtime(start);
console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);

console.log(__getString(result));