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
./emcc Ray/fibonacci.c 
```

This generates these files inside the Emscripten directory:

> a.out.js
> a.out.wasm

Copy those files back to: 

```
cp a.out.js ~/MastersProject/Project/Algorithms/C/Fibonacci/
cp a.out.wasm ~/MastersProject/Project/Algorithms/C/Fibonacci/
```

To run using NodeJS:

```
cd ~/MastersProject/Project/Algorithms/C/Fibonacci
node a.out.js
```
