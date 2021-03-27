### Compile
```
emcc nQueen.c -o nQueen.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_nQueen']"
```

### Execute
```
node experiment.js
```

### Selection Sort
> https://www.geeksforgeeks.org/c-program-for-n-queen-problem-backtracking-3/