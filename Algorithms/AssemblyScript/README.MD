### AssemblyScript
https://www.assemblyscript.org/quick-start.html

Set up new project
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

Build
```
npm run asbuild
```

Test
```
npm test
```

Or test using Node directly
```
node

> const fibonacci = require('./index').fibonacci
undefined

fibonacci(40)
165580141
```
