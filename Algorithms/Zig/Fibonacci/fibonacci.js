const fs = require('fs');
const source = fs.readFileSync("./fibonacci.wasm");
const typedArray = new Uint8Array(source);

WebAssembly.instantiate(typedArray, {
    env: {
        print: (result) => { console.log(result); }
    }
}).then(result => {
    const fib = result.instance.exports.fib;

    // Begin Timer
    const start = process.hrtime();

    fib(40);

    // End Timer
    const diff = process.hrtime(start);
    console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
});
