let imports = {};
imports['__wbindgen_placeholder__'] = module.exports;
let wasm;

/**
*/
module.exports.main_js = function() {
    wasm.main_js();
};

module.exports.__wbg_log_981b7a741cc89e37 = function(arg0, arg1) {
    console.log(arg0 === 0 ? undefined : arg1 >>> 0);
};

const path = require('path').join(__dirname, 'linear_search_bg.wasm');
const bytes = require('fs').readFileSync(path);

const wasmModule = new WebAssembly.Module(bytes);
const wasmInstance = new WebAssembly.Instance(wasmModule, imports);
wasm = wasmInstance.exports;
module.exports.__wasm = wasm;

wasm.__wbindgen_start();

