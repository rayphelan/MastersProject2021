### Compile
```
emcc linearSearch.c -o linearSearch.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_linearSearch']"
```

### Execute
```
node experiment.js
```

### Source
> https://www.programiz.com/dsa/linear-search