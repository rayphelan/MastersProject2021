### Compile
```
emcc bubbleSort2.c -o bubbleSort2.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_bubbleSort']"
```

### Run experiment
```
node experiment.js
```

C programming does not allow to return an entire array as an argument to a function. However, you can return a pointer to an array by specifying the array's name without an index.
https://www.tutorialspoint.com/cprogramming/c_return_arrays_from_function.htm

