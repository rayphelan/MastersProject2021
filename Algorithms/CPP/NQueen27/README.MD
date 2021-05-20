### Compile
```
emcc nQueen.cpp -o nQueen.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_nQueen']"
```

### Execute
```
node experiment.js
```

### Create WAT file
```
wasm2wat nQueen.wasm -o nQueen.wat
```

### Source
> https://www.geeksforgeeks.org/c-program-for-n-queen-problem-backtracking-3/