# AssemblyScript

https://www.assemblyscript.org/quick-start.html

### Start new project

```
npm init
```

### Install dependencies

```
npm install --save @assemblyscript/loader
npm install --save-dev assemblyscript
```

### Initialize

```
npx asinit .
```

### Edit sources in

```
/assembly/index.ts
```

### Build WebAssembly

```
npm run asbuild
```

### Add experimental tests to "experiment" folder and run

The code snippet below is the JavaScript experiment runner used to execute the WebAssembly module and benchmark the performance.

This process is the same for all the algorithms in the AssemblyScript experiments.

```
const myModule = require("..");
const fs = require('fs');

const results = [];
const iterations = 120;

for (n = 1; n <= iterations; n++) {

    // Begin timer
    const start = process.hrtime();

    // Run WASM
    const wasm = myModule.binarySearch();

    // End timer
    const diff = process.hrtime(start);

    // Log Results
    const result = (diff[0] * 1e9 + diff[1])/1000000000;
    results.push(result);
    console.log(n, result);

    // console.log(`Execution time: ${diff[0] * 1e9 + diff[1]} nanoseconds`);
    // console.log("Execution time (hr): %ds %dms", diff[0], diff[1]/1000000);
    console.log(wasm);
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

### Run experiment

```
npm experiment/index.js
```

### Results

The results will be saved in the current directory in CSV format.
