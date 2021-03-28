### Compile
```
emcc primeNumber.c -o primeNumber.js -O2 -s MODULARIZE -s "EXPORTED_FUNCTIONS=['_primeNumber']"
```

### Execute
```
node experiment.js
```

### Source
> https://www.csinfo360.com/2020/01/write-program-to-find-nth-prime-number.html