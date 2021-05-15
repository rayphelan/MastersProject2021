### Compile
```
emcc subsetSum.c -o subsetSum.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_subsetSum']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat subsetSum.wasm -o subsetSum.wat
```

### Subset Sum
> https://www.geeksforgeeks.org/subset-sum-problem-dp-25/