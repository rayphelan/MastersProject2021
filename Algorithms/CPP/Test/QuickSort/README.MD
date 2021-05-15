### Compile
```
emcc quickSort.cpp -o quickSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_quickSort']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat quickSort.wasm -o quickSort.wat
```

### Source
> https://www.programiz.com/dsa/quick-sort
