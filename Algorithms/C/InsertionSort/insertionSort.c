#include <stdio.h>
#include <stdlib.h>

// Function to print an array
void printArray(int array[], int size) {
  for (int i = 0; i < size; i++) {
    printf("%d ", array[i]);
  }
  printf("\n");
}

void iSort(int array[], int size) {
  for (int step = 1; step < size; step++) {
    int key = array[step];
    int j = step - 1;

    // Compare key with each element on the left of it until an element smaller than
    // it is found.
    // For descending order, change key<array[j] to key>array[j].
    while (key < array[j] && j >= 0) {
      array[j + 1] = array[j];
      --j;
    }
    array[j + 1] = key;
  }
}

int insertionSort(int arraySize) {

    int array[arraySize];

    srand(0);

    for (int i = 0; i < arraySize; i++)
    {
        array[i] = rand();
    }

    iSort(array, arraySize);

    for (int i = 0; i < arraySize; i++)
        printf(" %d \n", array[i]);

    return 0;
}
