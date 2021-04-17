### Compile
```
emcc heapSort.cpp -o heapSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_heapSort']"
```

### Execute
```
node experiment.js
```
### Create WAT file
```
wasm2wat heapSort.wasm -o heapSort.wat
```

### Source
> https://www.programiz.com/dsa/heap-sort