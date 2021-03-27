### Compile
```
emcc selectionSort.c -o selectionSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_selectionSort']"
```

### Execute
```
node experiment.js
```

### Selection Sort
> https://www.programiz.com/dsa/selection-sort