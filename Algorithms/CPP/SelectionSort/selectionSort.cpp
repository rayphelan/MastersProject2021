#include <cstdlib>
#include <iostream>
using namespace std;

// function to swap the the position of two elements
void swap(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

// function to print an array
void printArray(int array[], int size)
{
    for (int i = 0; i < size; i++)
    {
        cout << array[i] << " \n";
    }
    cout << endl;
}

void sSort(int array[], int size)
{
    for (int step = 0; step < size - 1; step++)
    {
        int min_idx = step;
        for (int i = step + 1; i < size; i++)
        {

            // To sort in descending order, change > to < in this line.
            // Select the minimum element in each loop.
            if (array[i] < array[min_idx])
                min_idx = i;
        }

        // put min at the correct position
        swap(&array[min_idx], &array[step]);
    }
}

extern "C" {
    int selectionSort(int arraySize)
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