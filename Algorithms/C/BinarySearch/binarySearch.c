#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int search(int array[], int x, int low, int high)
{
    // Repeat until the pointers low and high meet each other
    while (low <= high)
    {
        int mid = low + (high - low) / 2;

        if (array[mid] == x)
            return mid;

        if (array[mid] < x)
            low = mid + 1;

        else
            high = mid - 1;
    }

    return -1;
}

int binarySearch(int arraySize)
{

    int array[arraySize];
    int maxNum = arraySize * 10;

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