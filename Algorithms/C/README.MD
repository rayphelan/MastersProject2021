# Compile to WASM with Emscripten

Copy algorithm program to Emscripten location.

```
cp ~/MastersProject/Project/Algorithms/C/Fibonacci/fibonacci.c ~/MastersProject/emscripten/emsdk/upstream/emscripten/Ray/
```

Go Inside Emscripten directory: 

```
cd ~/MastersProject/emscripten/emsdk/upstream/emscripten
```

Run this command:

```
./emcc <filename>.c -o <filename>.js -s MODULARIZE
```

This generates these files inside the Emscripten directory:

> <filename>.js
> <filename>.wasm

Copy those files back to: 

```
cp <filename>.js ~/MastersProject/Project/Algorithms/C/Fibonacci/
cp <filename>.wasm ~/MastersProject/Project/Algorithms/C/Fibonacci/
```

To run using NodeJS:

```

var factory = require('<filename>.js');

factory()

```

More can be read here

https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html
