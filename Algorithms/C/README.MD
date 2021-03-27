# Compile to WASM with Emscripten

### Compile as a SIDE_MODULE

```
emcc fibonacci-3.c -Os -s SIDE_MODULE=1 -o fibonacci-3.wasm
```

### Optional - Create WebAssembly Text File for visual purpose only
```
wasm2wat fibonacci-3.wasm -o fibonacci-3.wat
```

### Exact steps taken:
```
ray@ray-VirtualBox:~/MastersProject/Project/Algorithms/C/Fibonacci$ emcc fibonacci.c -o fibonacci.wasm -O2 -s SIDE_MODULE=1
ray@ray-VirtualBox:~/MastersProject/Project/Algorithms/C/Fibonacci$ wasm2wat fibonacci.wasm -o fibonacci.wat
ray@ray-VirtualBox:~/MastersProject/Project/Algorithms/C/Fibonacci$ node fibonacci.js
165580141
```

### To use WASM from NodeJS:

```
'use strict';
const fs = require('fs');
const bytes = fs.readFileSync('./fibonacci-3.wasm');

(async () => {
  const { instance, module } = await WebAssembly.instantiate(bytes);
  console.log(instance.exports.fib(40));
})();
```

### More can be read here:

> https://www.joyent.com/blog/improved-wasm-support-coming-to-node

> https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html
