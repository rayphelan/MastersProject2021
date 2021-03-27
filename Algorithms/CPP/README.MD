# Compile to WASM with Emscripten

### Compile as a SIDE_MODULE

```
emcc fibonacci.cpp -o fibonacci.wasm -O2 -s SIDE_MODULE=1
```

### Optional - Create WebAssembly Text File for visual purpose only
```
wasm2wat fibonacci.wasm -o fibonacci.wat
```

### To use WASM from NodeJS:

```
'use strict';
const fs = require('fs');
const bytes = fs.readFileSync('./fibonacci-3.wasm');

(async () => {
  const { instance, module } = await WebAssembly.instantiate(bytes);
  console.log(instance.exports.fibonacci(40));
})();
```

### Note about C++ function name mangling
Wrap function in: extern "C" to prevent name mangling.

> https://en.wikipedia.org/wiki/Name_mangling


### Exact steps taken:
```
ray@ray-VirtualBox:~/MastersProject/Project/Algorithms/CPP/Fibonacci$ emcc fibonacci.cpp -o fibonacci.wasm -O2 -s SIDE_MODULE=1
ray@ray-VirtualBox:~/MastersProject/Project/Algorithms/CPP/Fibonacci$ wasm2wat fibonacci.wasm -o fibonacci.wat
ray@ray-VirtualBox:~/MastersProject/Project/Algorithms/CPP/Fibonacci$ node fibonacci.js
```

### More can be read here:

> https://www.joyent.com/blog/improved-wasm-support-coming-to-node

> https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html
