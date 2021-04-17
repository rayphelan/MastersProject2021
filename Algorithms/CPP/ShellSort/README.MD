### Compile
```
emcc shellSort.cpp -o shellSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_shellSort']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat shellSort.wasm -o shellSort.wat
```

### Source
> https://www.programiz.com/dsa/shell-sort