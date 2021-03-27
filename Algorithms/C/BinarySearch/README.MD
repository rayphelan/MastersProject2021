### Compile
```
emcc binarySearch.c -o binarySearch.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_binarySearch']"
```

### Execute
```
node experiment.js
```

### Selection Sort
> https://www.programiz.com/dsa/binary-search