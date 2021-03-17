## Zig to Webassembly documentation

https://ziglang.org/documentation/master/#WebAssembly

### Example:

__math.zig__

```
extern fn print(i32) void;

export fn add(a: i32, b: i32) void {
    print(a + b);
}
```

### Compile to WebAssembly 

```
$ zig build-lib math.zig -target wasm32-freestanding
```

### Example Javascript file:

__test.js__

```
const fs = require('fs');
const source = fs.readFileSync("./math.wasm");
const typedArray = new Uint8Array(source);

WebAssembly.instantiate(typedArray, {
  env: {
    print: (result) => { console.log(`The result is ${result}`); }
  }}).then(result => {
  const add = result.instance.exports.add;
  add(1, 2);
});
```

### Run in NodeJS

```
$ node test.js
The result is 3
```


