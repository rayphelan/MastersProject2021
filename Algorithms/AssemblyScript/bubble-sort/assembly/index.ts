export function bubbleSort() :void {

  const arraySize: i32 = 10000;
  const array = new Array<number>(arraySize);

  for (let i:i32 = 0; i < arraySize; i++) {
    array[i] = Math.floor(Math.random() * (arraySize - 1) + 1)
  }

  for (let i: i32 = arraySize - 2; i >= 0; i--)
  {
    for (let j: i32 = 0; j <= i; j++)
    {
      if (array[j] > array[j + 1]) {
        let temp: f64 = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }  

}