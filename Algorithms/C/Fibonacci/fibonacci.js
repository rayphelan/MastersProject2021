'use strict';
const fs = require('fs');
const bytes = fs.readFileSync('./fibonacci.wasm');

(async () => {
  const { instance, module } = await WebAssembly.instantiate(bytes);
  console.log(instance.exports.fibonacci(40));
})();
