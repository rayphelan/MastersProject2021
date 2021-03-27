'use strict';
const fs = require('fs');
const bytes = fs.readFileSync('./fibonacci.wasm');

(async () => {
  const { instance, module } = await WebAssembly.instantiate(bytes);
  
  // Exported function
  const fibonacci = instance.exports.fibonacci;
  
  // Begin timer
  const start = process.hrtime();
  const diff = process.hrtime(start);

  // Execute
  const result = fibonacci(40);
  
  // End timer
  console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);

  // Result
  console.log(`Fibonacci: ${result}`);
})();
