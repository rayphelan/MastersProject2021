const arraySize: i32 = 5;
// const array = new Array<number>(arraySize);

// for (let i: i32 = 0; i < arraySize; i++) {
//   array[i] = Math.floor(Math.random() * (arraySize - 1) + 1)
// }

const array = new Array<number>(arraySize);
array[0] = 50; // 2
array[1] = 30; // 1
array[2] = 60; // 3
array[3] = 20; // 0
array[4] = 70; // 4

function sSort() :void {
  for (let step: i32 = 0; step < arraySize - 1; step++) {
    let min_idx: i32 = step;
    for (let i: i32 = step + 1; i < arraySize; i++) {

      if (array[i] < array[min_idx])
        min_idx = i;
    }


    let temp: f64 = array[min_idx];
    array[min_idx] = array[step];
    array[step] = temp;
  }
}

export function selectionSort(): f64 {

  sSort();

  return array[3];
}