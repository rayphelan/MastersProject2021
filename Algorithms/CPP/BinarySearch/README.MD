### Compile
```
emcc binarySearch.cpp -o binarySearch.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_binarySearch']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat binarySearch.wasm -o binarySearch.wat
```

### Source
> https://www.programiz.com/dsa/binary-search