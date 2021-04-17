### Compile
```
emcc bubbleSort.cpp -o bubbleSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_bubbleSort']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat bubbleSort.wasm -o bubbleSort.wat
```

### Source
> https://www.programiz.com/dsa/bubble-sort