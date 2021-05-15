let imports = {};
let wasm;

/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

const path = require('path').join(__dirname, 'n_queen_bg.wasm');
const bytes = require('fs').readFileSync(path);

const wasmModule = new WebAssembly.Module(bytes);
const wasmInstance = new WebAssembly.Instance(wasmModule, imports);
wasm = wasmInstance.exports;
module.exports.__wasm = wasm;

// Start Timer
const start = process.hrtime();

// Run WASM
wasm.__wbindgen_start();

// End Timer
const diff = process.hrtime(start);
console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);

