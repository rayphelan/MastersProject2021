# AssemblyScript 
https://www.assemblyscript.org/quick-start.html

Start new project
```
npm init
```

Install dependencies
```
npm install --save @assemblyscript/loader
npm install --save-dev assemblyscript
```

Initialize
```
npx asinit .
```

Build WebAssembly
```
npm run asbuild
```

Tests
```
npm test
```

Node
```
node
> const fibonacci = require('./index').fibonacci
fibonacci(40)
```

Add experimental tests to "experiment" folder and run
```
const myModule = require("..");
const result = myModule.fibonacci(40);
console.log(result);
```

Run experiment
```
npm experiment/index.js
```

