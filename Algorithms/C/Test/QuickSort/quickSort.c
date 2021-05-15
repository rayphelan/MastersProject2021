#include <stdio.h>
#include <stdlib.h>

// Function to swap position of elements
void swap(int *a, int *b)
{
    int t = *a;
    *a = *b;
    *b = t;
}

// Function to partition the array on the basis of pivot element
int partition(int array[], int low, int high)
{

    int pivot = array[high], i = (low - 1);

    for (int j = low; j < high; j++)
    {
        if (array[j] <= pivot)
        {
            i++;
            swap(&array[i], &array[j]);
        }
    }

    swap(&array[i + 1], &array[high]);
    return (i + 1);
}

void qSort(int array[], int low, int high)
{
    if (low < high)
    {
        int pi = partition(array, low, high);
        qSort(array, low, pi - 1);
        qSort(array, pi + 1, high);
    }
}

int quickSort(int arraySize)
{
    int array[arraySize];
    
    srand(0);

    for (int i = 0; i < arraySize; i++) {
        array[i] = rand();
    }

    qSort(array, 0, arraySize - 1);

    for (int i = 0; i < arraySize; i++)
        printf(" %d \n", array[i]);

    return 0;
}