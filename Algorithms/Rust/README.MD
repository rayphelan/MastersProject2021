### Rust Website
https://www.rust-lang.org/

# Other useful websites
https://rustwasm.github.io/docs/book/game-of-life/hello-world.html
https://rustwasm.github.io/wasm-pack/book/tutorials/hybrid-applications-with-webpack/getting-started.html


### New Project
```
wasm-pack new myproject
```

### Build for Node
```
wasm-pack build --target nodejs
```

### Update gitignore (optional) - remove *
```
pkg/.gitignore
```

### Update JS: pkg/<filename>.js with timer
```
// Start Timer
const start = process.hrtime();

// Run WASM
wasm.__wbindgen_start();

// End Timer
const diff = process.hrtime(start);
console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);
```

### Run with NodeJS
```
node pkg/<filename>.js
```
