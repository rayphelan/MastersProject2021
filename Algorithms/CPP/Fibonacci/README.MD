# Compile to WASM with Emscripten

```
emcc fibonacci.cpp -o fibonacci.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_fibonacci']"
```

### Execute
```
node experiment.js
```
### Create WAT file
```
wasm2wat fibonacci.wasm -o fibonacci.wat