const arraySize: i32 = 5;
// const array = new Array<number>(arraySize);

// for (let i: i32 = 0; i < arraySize; i++) {
//   array[i] = Math.floor(Math.random() * (arraySize - 1) + 1)
// }

const array = new Array<number>(arraySize);
array[0] = 50;
array[1] = 30;
array[2] = 60;
array[3] = 20;
array[4] = 70;

// Function to swap the the position of two elements
function swap(a: i32, b: i32) :void {
  let temp :f64 = array[a];
  array[a] = array[b];
  array[b] = temp;
}

function heapify(n :i32, i :i32) :void {
  // Find largest among root, left child and right child
  let largest :i32 = i;
  let left :i32 = 2 * i + 1;
  let right :i32 = 2 * i + 2;

  if (left < n && array[left] > array[largest])
    largest = left;

  if (right < n && array[right] > array[largest])
    largest = right;

  // Swap and continue heapifying if root is not largest
  if (largest != i) {
    swap(i, largest);
    heapify(n, largest);
  }
}

// Main function to do heap sort
function hSort() :void
{
  // Build max heap
  for (let i :i32 = arraySize / 2 - 1; i >= 0; i--)
  heapify(arraySize, i);

  // Heap sort
  for (let i :i32 = arraySize - 1; i >= 0; i--)
  {
    swap(0, i);

    // Heapify root element to get highest element at root again
    heapify(i, 0);
  }
}

export function heapSort() :f64
{

  hSort();

  return array[1];

}