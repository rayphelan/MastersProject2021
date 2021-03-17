
# Compile to WASM with Emscripten

Copy algorithm program to Emscripten location.

> cp ~/MastersProject/Algorithms/C/Fibonacci/fibonacci.c ~/MastersProject/emscripten/emsdk/upstream/emscripten/Ray/


Go Inside Emscripten directory: 

> cd ~/MastersProject/emscripten/emsdk/upstream/emscripten

Run this command:

> ./emcc Ray/fibonacci.c 


This generates these files inside the Emscripten directory:

> a.out.js
> a.out.wasm


Copy those files back to: 

> cp a.out.js ~/MastersProject/Algorithms/C/Fibonacci/
> cp a.out.wasm ~/MastersProject/Algorithms/C/Fibonacci/

To run using NodeJS:

> cd ~/MastersProject/Algorithms/C/Fibonacci
> node a.out.js

-------------------------------------------------

## How to compile and execute C

To Compile C program:
> gcc -o <NameToSaveAs> <C-filename.c>

To Execute:
> ./<NameToSaveAs>
