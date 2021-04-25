const arraySize: i32 = 3;
const array = new Array<number>(arraySize);
array[0] = 1;
array[1] = 2;
array[2] = 3;


function search(array: number[], n: i32, x: i32) :number {

  // Going through array sequencially
  for (let i: i32 = 0; i < n; i++)
    if (array[i] == x)
      return i;
  return -1;
}

export function linearSearch() : f64
{

  const find: i32 = 3;

  const result: f64 = search(array, arraySize, find);

  return result;
}