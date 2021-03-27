#include <stdio.h>
#include <stdlib.h>

void swap(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

void sSort(int array[], int size)
{
    for (int step = 0; step < size - 1; step++)
    {
        int min_idx = step;
        for (int i = step + 1; i < size; i++)
        {

            if (array[i] < array[min_idx])
                min_idx = i;
        }

        swap(&array[min_idx], &array[step]);
    }
}

int selectionSort(int arraySize)
{

    int array[arraySize];

    srand(0);

    for (int i = 0; i < arraySize; i++)
    {
        array[i] = rand();
    }

    sSort(array, arraySize);

    for (int i = 0; i < arraySize; i++)
        printf(" %d \n", array[i]);

    return 0;
}