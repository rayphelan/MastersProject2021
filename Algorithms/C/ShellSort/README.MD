### Compile
```
emcc shellSort.c -o shellSort.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_shellSort']"
```

### Execute
```
node experiment.js
```

### Source
> https://www.programiz.com/dsa/shell-sort