### Compile
```
emcc linearSearch.cpp -o linearSearch.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_linearSearch']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat linearSearch.wasm -o linearSearch.wat
```

### Source
> https://www.programiz.com/dsa/linear-search