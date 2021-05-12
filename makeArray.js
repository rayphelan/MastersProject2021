const min = 0;
const max = 1000;
const arr = [];

for (let i = min; i < max; i++) {
    arr[i]=i;
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

a = shuffle(arr);

fs = require('fs');
fs.writeFile('randomArray.txt', a.toString(), function (err) {
    if (err) return console.log(err);
    console.log('OK');
});