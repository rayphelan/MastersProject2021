### Compile
```
emcc mergeSort.c -o mergeSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_mergeSort']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat linearSearch.wasm -o linearSearch.wat
```

### Source
> https://www.programiz.com/dsa/merge-sort