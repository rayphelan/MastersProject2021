const min = 0;
const max = 1000;
const arrSorted = [];
const arrRSorted = [];
const arrRandom = [];
let c = 0;

// Reverse Sorted
for (let i = max - 1; i >= min; i--) {
  arrRSorted[c]=i;
  c++;
}

// Sorted
for (let i = min; i < max; i++) {
    arrSorted[i]=i;
}

// Random
for (let i = min; i < max; i++) {
  arrRandom[i]=i;
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