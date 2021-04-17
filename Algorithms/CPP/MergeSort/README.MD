### Compile
```
emcc mergeSort.cpp -o mergeSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_mergeSort']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat mergeSort.wasm -o mergeSort.wat
```

### Source
> https://www.programiz.com/dsa/merge-sort