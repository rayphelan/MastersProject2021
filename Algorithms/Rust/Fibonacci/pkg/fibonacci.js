let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;

const u32CvtShim = new Uint32Array(2);

const uint64CvtShim = new BigUint64Array(u32CvtShim.buffer);

let cachegetInt32Memory0 = null;
function getInt32Memory0() {
    if (cachegetInt32Memory0 === null || cachegetInt32Memory0.buffer !== wasm.memory.buffer) {
        cachegetInt32Memory0 = new Int32Array(wasm.memory.buffer);
    }
    return cachegetInt32Memory0;
}
/**
* @param {BigInt} n
* @returns {BigInt}
*/
module.exports.fibonacci = function(n) {
    try {
        const retptr = wasm.__wbindgen_add_to_stack_pointer(-16);
        uint64CvtShim[0] = n;
        const low0 = u32CvtShim[0];
        const high0 = u32CvtShim[1];
        wasm.fibonacci(retptr, low0, high0);
        var r0 = getInt32Memory0()[retptr / 4 + 0];
        var r1 = getInt32Memory0()[retptr / 4 + 1];
        u32CvtShim[0] = r0;
        u32CvtShim[1] = r1;
        const n1 = uint64CvtShim[0];
        return n1;
    } finally {
        wasm.__wbindgen_add_to_stack_pointer(16);
    }
};

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

// Begin Timer
const start = process.hrtime();

wasm.__wbindgen_start();

// End Timer
const diff = process.hrtime(start);
console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
