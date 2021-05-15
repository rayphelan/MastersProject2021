#include <cstdlib>
#include <iostream>
using namespace std;

void iSort(int array[], int size) {
  for (int step = 1; step < size; step++) {
    int key = array[step];
    int j = step - 1;

    while (key < array[j] && j >= 0) {
      array[j + 1] = array[j];
      --j;
    }
    array[j + 1] = key;
  }
}

extern "C" {
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
}