let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;
const { TextDecoder } = require(String.raw`util`);

let cachedTextDecoder = new TextDecoder('utf-8', { ignoreBOM: true, fatal: true });

cachedTextDecoder.decode();

let cachegetUint8Memory0 = null;
function getUint8Memory0() {
    if (cachegetUint8Memory0 === null || cachegetUint8Memory0.buffer !== wasm.memory.buffer) {
        cachegetUint8Memory0 = new Uint8Array(wasm.memory.buffer);
    }
    return cachegetUint8Memory0;
}

function getStringFromWasm0(ptr, len) {
    return cachedTextDecoder.decode(getUint8Memory0().subarray(ptr, ptr + len));
}
/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

module.exports.__wbg_log_a1f559b92d9899b9 = function(arg0, arg1) {
    try {
        console.log(getStringFromWasm0(arg0, arg1));
    } finally {
        wasm.__wbindgen_free(arg0, arg1);
    }
};

const path = require('path').join(__dirname, 'n_queen27_bg.wasm');
const bytes = require('fs').readFileSync(path);

const wasmModule = new WebAssembly.Module(bytes);
const wasmInstance = new WebAssembly.Instance(wasmModule, imports);
wasm = wasmInstance.exports;
module.exports.__wasm = wasm;

const fs = require('fs');

const results = [];
const iterations = 120;

for (n = 1; n <= iterations; n++) {
        
    // Start Timer
    const start = process.hrtime();

    // Run WASM
    wasm.__wbindgen_start();

    // End Timer
    const diff = process.hrtime(start);

    // Log Results
    const result = (diff[0] * 1e9 + diff[1])/1000000000;
    results.push(result);
    console.log(n, result);

    // console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
    // console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);
    // console.log(wasm);
}

console.log(results);

// Save to CSV
const csv = results.join('\n');

// Write File
fs.writeFile('results.csv', csv, function (err) {
    if (err) return console.log(err);
    console.log('Filesaved');
});

