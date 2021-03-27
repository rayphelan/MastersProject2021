#include <stdio.h>
#include <stdlib.h>

int bubbleSort(int arraySize)
{

    int temp, array[arraySize];

    srand(0);

    for (int i = 0; i < arraySize; i++) {
        array[i] = rand();
    }

    for (int i = arraySize - 2; i >= 0; i--)
    {
        for (int j = 0; j <= i; j++)
        {
            if (array[j] > array[j + 1])
            {
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }

    for (int i = 0; i < arraySize; i++)
        printf(" %d \n", array[i]);

    return 0;
}