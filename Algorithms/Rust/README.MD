### Rust Website

https://www.rust-lang.org/

# Other useful websites

https://rustwasm.github.io/docs/book/game-of-life/hello-world.html
https://rustwasm.github.io/wasm-pack/book/tutorials/hybrid-applications-with-webpack/getting-started.html

### Create New Project

```
wasm-pack new myproject
```

### Build for Node

```
wasm-pack build --target nodejs
```

### Update gitignore (optional) - remove \*

```
pkg/.gitignore
```

### Update JavaScript file located in: pkg/<filename>.js with code for running experiment

### Replace this line of code:

```
wasm.__wbindgen_start();
```

With these lines of code:

```
const fs = require('fs');

const results = [];
const iterations = 120;

for (n = 1; n <= iterations; n++) {

    // Start Timer
    const start = process.hrtime();

    // Run WASM
    wasm.__wbindgen_start();

    // End Timer
    const diff = process.hrtime(start);

    // Log Results
    const result = (diff[0] * 1e9 + diff[1])/1000000000;
    results.push(result);
    console.log(n, result);

}

console.log(results);

// Save to CSV
const csv = results.join('\n');

// Write File
fs.writeFile('results.csv', csv, function (err) {
    if (err) return console.log(err);
    console.log('Filesaved');
});
```

### Run with NodeJS

```
node pkg/<filename>.js
```
