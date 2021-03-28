### Compile
```
emcc knightsTour.c -o knightsTour.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_knightsTour']"
```

### Execute
```
node experiment.js
```

### Source
> https://scanftree.com/tutorial/algorithms/backtracking/knights-tour-problem/