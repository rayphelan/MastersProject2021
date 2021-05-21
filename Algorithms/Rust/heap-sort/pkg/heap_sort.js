let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;

function notDefined(what) { return () => { throw new Error(`${what} is not defined`); }; }
/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

module.exports.__wbg_log_46a805afd3b96270 = typeof console.log == 'function' ? console.log : notDefined('console.log');

const path = require('path').join(__dirname, 'heap_sort_bg.wasm');
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