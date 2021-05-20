let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;

function notDefined(what) { return () => { throw new Error(`${what} is not defined`); }; }
/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

module.exports.__wbg_log_3ffe208dbff50a8b = typeof console.log == 'function' ? console.log : notDefined('console.log');

const path = require('path').join(__dirname, 'shell_sort_bg.wasm');
const bytes = require('fs').readFileSync(path);

const wasmModule = new WebAssembly.Module(bytes);
const wasmInstance = new WebAssembly.Instance(wasmModule, imports);
wasm = wasmInstance.exports;
module.exports.__wasm = wasm;

wasm.__wbindgen_start();

