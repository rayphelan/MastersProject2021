# Compile to WASM with Emscripten

Copy algorithm program to Emscripten location.

```
cp ~/MastersProject/Project/Algorithms/CPP/Fibonacci/fibonacci.cpp ~/MastersProject/emscripten/emsdk/upstream/emscripten/Ray/
```

Go Inside Emscripten directory: 

```
cd ~/MastersProject/emscripten/emsdk/upstream/emscripten
```

Run this command:

```
./emcc Ray/fibonacci.cpp
```

This generates these files inside the Emscripten directory:

> a.out.js
> a.out.wasm

Copy those files back to: 

```
cp a.out.js ~/MastersProject/Project/Algorithms/CPP/Fibonacci/
cp a.out.wasm ~/MastersProject/Project/Algorithms/CPP/Fibonacci/
```

To run using NodeJS:

```
cd ~/MastersProject/Project/Algorithms/CPP/Fibonacci
node a.out.js
```
