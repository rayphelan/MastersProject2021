'use strict';
const fs = require('fs');
const bytes = fs.readFileSync('./factorial.wasm');

(async () => {
  const { instance, module } = await WebAssembly.instantiate(bytes);
  
  // Exported function
  const factorial = instance.exports.factorial;
  
  // Begin timer
  const start = process.hrtime();
  const diff = process.hrtime(start);

  // Execute
  const result = factorial(1000);
  
  // End timer
  console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);

  // Result
  console.log(`factorial: ${result}`);
})();
