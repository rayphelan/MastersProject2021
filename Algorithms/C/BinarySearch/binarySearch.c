#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Recursive Method

int search(int array[], int x, int low, int high) {
  if (high >= low) {
    int mid = low + (high - low) / 2;

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

int binarySearch(int arraySize)
{

    int array[arraySize];
    int maxNum = arraySize;

    srand(time(0));

    for (int i = 0; i < arraySize; i++)
    {
        array[i] = rand() % maxNum;
    }

    int x = rand() % maxNum;

    int result = search(array, x, 0, arraySize - 1);

    // for (int i = 0; i < arraySize; i++)
    //     printf(" %d \n", array[i]);

    if (result == -1)
    {
        printf("%d Not found \n", x);
    }
    else {
        printf("%d Found at index %d \n", x, result);
    }

    return 0;
}