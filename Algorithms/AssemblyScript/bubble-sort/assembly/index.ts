export function bubbleSort() :f64 {

  const arraySize: i32 = 5;
  //onst array = new Array<number>(arraySize);

  // for (let i:i32 = 0; i < arraySize; i++) {
  //   array[i] = Math.floor(Math.random() * (arraySize - 1) + 1)
  // }

  const array = new Array<number>(arraySize);
  array[0] = 50; // 2
  array[1] = 30; // 1
  array[2] = 60; // 3
  array[3] = 20; // 0
  array[4] = 70; // 4

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

  return array[3];

}