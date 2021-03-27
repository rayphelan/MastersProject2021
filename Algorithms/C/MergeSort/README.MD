### Compile
```
emcc mergeSort.c -o mergeSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_mergeSort']"
```

### Execute
```
node experiment.js
```

### Insertion Sort
> https://www.programiz.com/dsa/merge-sort