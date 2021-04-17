#include <cstdlib>
#include <iostream>
using namespace std;

// Shell sort
void sSort(int array[], int n)
{
    // Rearrange elements at each n/2, n/4, n/8, ... intervals
    for (int interval = n / 2; interval > 0; interval /= 2)
    {
        for (int i = interval; i < n; i += 1)
        {
            int temp = array[i];
            int j;
            for (j = i; j >= interval && array[j - interval] > temp; j -= interval)
            {
                array[j] = array[j - interval];
            }
            array[j] = temp;
        }
    }
}

// Print an array
void printArray(int array[], int size)
{
    int i;
    for (i = 0; i < size; i++)
        cout << array[i] << " \n";
    cout << endl;
}

extern "C" {
    int shellSort(int arraySize)
    {
        int array[arraySize];

        srand(0);

        for (int i = 0; i < arraySize; i++)
        {
            array[i] = rand();
        }

        sSort(array, arraySize);
        printArray(array, arraySize);

        return 0;
    }
}