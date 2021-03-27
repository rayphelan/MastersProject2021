### Compile
```
emcc insertionSort.c -o insertionSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_insertionSort']"
```

### Execute
```
node experiment.js
```

### Insertion Sort
> https://www.programiz.com/dsa/insertion-sort