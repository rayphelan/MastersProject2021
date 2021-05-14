let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;

const u32CvtShim = new Uint32Array(2);

const uint64CvtShim = new BigUint64Array(u32CvtShim.buffer);
/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

module.exports.__wbg_log_e2b7116aabd69db1 = function(arg0, arg1) {
    u32CvtShim[0] = arg0;
    u32CvtShim[1] = arg1;
    const n0 = uint64CvtShim[0];
    console.log(n0);
};

const path = require('path').join(__dirname, 'fibonacci_bg.wasm');
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

