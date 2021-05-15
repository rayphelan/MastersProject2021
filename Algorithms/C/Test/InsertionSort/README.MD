### Compile
```
emcc insertionSort.c -o insertionSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_insertionSort']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat insertionSort.wasm -o insertionSort.wat
```

### Insertion Sort
> https://www.programiz.com/dsa/insertion-sort