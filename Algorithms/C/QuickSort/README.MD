### Compile
```
emcc quickSort.c -o quickSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_quickSort']"
```

### Execute
```
node experiment.js
```

### Source
> https://www.programiz.com/dsa/quick-sort
