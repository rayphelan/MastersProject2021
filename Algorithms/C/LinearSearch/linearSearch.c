#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int search(int array[], int n, int x)
{

    // Going through array sequencially
    for (int i = 0; i < n; i++)
        if (array[i] == x)
            return i;
    return -1;
}

int linearSearch(int arraySize)
{

    int array[arraySize];
    int maxNum = arraySize * 10;

    srand(time(0));

    for (int i = 0; i < arraySize; i++)
    {
        array[i] = rand()%maxNum;
    }

    int x = rand()%maxNum;

    int result = search(array, arraySize, x);

    // for (int i = 0; i < arraySize; i++)
    //     printf(" %d \n", array[i]);

    if (result == -1) {
        printf("%d Not Found \n", x);
    }
    else {
        printf("%d Found at index %d \n", x, result);
    }

    return 0;
}