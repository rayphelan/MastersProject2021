const assert = require("assert");
const myModule = require("..");
assert.equal(myModule.fibonacci(10), 89);
console.log("ok");
