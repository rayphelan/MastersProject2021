function search(array: number[], x: i32, low: i32, high: i32): number {
  if (high >= low) {
    let mid: i32 = low + (high - low) / 2;

    // If found at mid, then return it
    if (array[mid] == x)
      return mid;

    // Search the left half
    if (array[mid] > x)
      return search(array, x, low, mid - 1);

    // Search the right half
    return search(array, x, mid + 1, high);
  }

  return -1;
}

export function binarySearch(): f64 {

  const arraySize: i32 = 3;
  const array = new Array<number>(arraySize);
  array[0] = 1;
  array[1] = 2;
  array[2] = 3;

  // for (let i: i32 = 0; i < arraySize; i++) {
  //   array[i] = Math.floor(Math.random() * (arraySize - 1) + 1)
  // }

  const find :i32 = 3;

  const result :f64 = search(array, find, 0, arraySize - 1);

  return result;
}