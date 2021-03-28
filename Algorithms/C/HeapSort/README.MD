### Compile
```
emcc heapSort.c -o heapSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_heapSort']"
```

### Execute
```
node experiment.js
```

### Source
> https://www.programiz.com/dsa/heap-sort