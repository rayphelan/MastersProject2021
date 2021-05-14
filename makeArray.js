const min = 0;
const max = 100000;
const arrSorted = [];
const arrRSorted = [];
const arrRandom = [];
let c = 0;

// Reverse Sorted
for (let i = max - 1; i >= min; i--) {
  let randomFloat = Math.random().toFixed(7).toString().replace("0.",".");
  let numStr = `${i}${randomFloat}`;
  arrRSorted[c] = parseFloat(numStr);
  c++;
}

// Sorted
for (let i = min; i < max; i++) {
  let randomFloat = Math.random().toFixed(7).toString().replace("0.",".");
  let numStr = `${i}${randomFloat}`;
  arrSorted[i] = parseFloat(numStr);
}

// Random
for (let i = min; i < max; i++) {
  let randomFloat = Math.random().toFixed(7).toString().replace("0.",".");
  let numStr = `${i}${randomFloat}`;
  arrRandom[i] = parseFloat(numStr);
}

function shuffle(array) {
  let tmp, current, top = array.length;
  if(top) while(--top) {
    current = Math.floor(Math.random() * (top + 1));
    tmp = array[current];
    array[current] = array[top];
    array[top] = tmp;
  }
  return array;
}

a = shuffle(arrRandom);

fs = require('fs');

// Random
fs.writeFile('randomArray.txt', a.toString(), function (err) {
    if (err) return console.log(err);
    console.log('OK');
});

// Sorted
fs.writeFile('sortedArray.txt', arrSorted.toString(), function (err) {
  if (err) return console.log(err);
  console.log('OK');
});

// Reverse Sorted
fs.writeFile('rSortedArray.txt', arrRSorted.toString(), function (err) {
  if (err) return console.log(err);
  console.log('OK');
});