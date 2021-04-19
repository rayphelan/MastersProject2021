let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;

function notDefined(what) { return () => { throw new Error(`${what} is not defined`); }; }
/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

module.exports.__wbg_log_9a3ca4c6460c23b0 = typeof console.log == 'function' ? console.log : notDefined('console.log');

const path = require('path').join(__dirname, 'binary_search_bg.wasm');
const bytes = require('fs').readFileSync(path);

const wasmModule = new WebAssembly.Module(bytes);
const wasmInstance = new WebAssembly.Instance(wasmModule, imports);
wasm = wasmInstance.exports;
module.exports.__wasm = wasm;

wasm.__wbindgen_start();

