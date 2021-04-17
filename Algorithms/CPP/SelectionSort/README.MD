### Compile
```
emcc selectionSort.cpp -o selectionSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_selectionSort']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat selectionSort.wasm -o selectionSort.wat
```

### Source
> https://www.programiz.com/dsa/selection-sort