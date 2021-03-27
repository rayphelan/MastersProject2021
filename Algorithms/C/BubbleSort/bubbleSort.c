#include <stdio.h>
#include <stdlib.h>

int bubbleSort(int arraySize)
{

    int temp, i, j, array[arraySize];

    srand(0);

    for (i = 0; i < arraySize; i++) {
        array[i] = rand();
    }

    for (i = arraySize - 2; i >= 0; i--)
    {
        for (j = 0; j <= i; j++)
        {
            if (array[j] > array[j + 1])
            {
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }

    for (i = 0; i < arraySize; i++)
        printf(" %d \n", array[i]);

    return 0;
}