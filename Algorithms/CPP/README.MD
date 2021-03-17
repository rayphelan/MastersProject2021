
# Compile to WASM with Emscripten

Copy algorithm program to Emscripten location.

> cp ~/MastersProject/Algorithms/CPP/Fibonacci/fibonacci.cpp ~/MastersProject/emscripten/emsdk/upstream/emscripten/Ray/


Go Inside Emscripten directory: 

> cd ~/MastersProject/emscripten/emsdk/upstream/emscripten

Run this command:

> ./emcc Ray/fibonacci.cpp


This generates these files inside the Emscripten directory:

> a.out.js
> a.out.wasm


Copy those files back to: 

> cp a.out.js ~/MastersProject/Algorithms/CPP/Fibonacci/
> cp a.out.wasm ~/MastersProject/Algorithms/CPP/Fibonacci/

To run using NodeJS:

> cd ~/MastersProject/Algorithms/CPP/Fibonacci
> node a.out.js

-------------------------------------------------