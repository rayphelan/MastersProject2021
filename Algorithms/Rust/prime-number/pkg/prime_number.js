let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;

let cachegetUint64Memory0 = null;
function getUint64Memory0() {
    if (cachegetUint64Memory0 === null || cachegetUint64Memory0.buffer !== wasm.memory.buffer) {
        cachegetUint64Memory0 = new BigUint64Array(wasm.memory.buffer);
    }
    return cachegetUint64Memory0;
}

function getArrayU64FromWasm0(ptr, len) {
    return getUint64Memory0().subarray(ptr / 8, ptr / 8 + len);
}

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
* @param {BigInt} limit
* @returns {BigUint64Array}
*/
module.exports.primes_up_to = function(limit) {
    try {
        const retptr = wasm.__wbindgen_add_to_stack_pointer(-16);
        uint64CvtShim[0] = limit;
        const low0 = u32CvtShim[0];
        const high0 = u32CvtShim[1];
        wasm.primes_up_to(retptr, low0, high0);
        var r0 = getInt32Memory0()[retptr / 4 + 0];
        var r1 = getInt32Memory0()[retptr / 4 + 1];
        var v1 = getArrayU64FromWasm0(r0, r1).slice();
        wasm.__wbindgen_free(r0, r1 * 8);
        return v1;
    } finally {
        wasm.__wbindgen_add_to_stack_pointer(16);
    }
};

/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

module.exports.__wbg_log_58a477d8fe2cf8fd = function(arg0, arg1) {
    var v0 = getArrayU64FromWasm0(arg0, arg1).slice();
    wasm.__wbindgen_free(arg0, arg1 * 8);
    console.log(v0);
};

const path = require('path').join(__dirname, 'prime_number_bg.wasm');
const bytes = require('fs').readFileSync(path);

const wasmModule = new WebAssembly.Module(bytes);
const wasmInstance = new WebAssembly.Instance(wasmModule, imports);
wasm = wasmInstance.exports;
module.exports.__wasm = wasm;

wasm.__wbindgen_start();

