const fs = require('fs');
const source = fs.readFileSync("./fibonacci.wasm");
const typedArray = new Uint8Array(source);

WebAssembly.instantiate(typedArray, {
    env: {
        print: (result) => { console.log(result); }
    }
}).then(result => {
    const fib = result.instance.exports.fib;
    fib(40);
});
