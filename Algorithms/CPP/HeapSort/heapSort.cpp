#include <iostream>
#include <cstdlib>
using namespace std;

void heapify(int arr[], int n, int i)
{
    // Find largest among root, left child and right child
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    if (left < n && arr[left] > arr[largest])
        largest = left;

    if (right < n && arr[right] > arr[largest])
        largest = right;

    // Swap and continue heapifying if root is not largest
    if (largest != i)
    {
        swap(arr[i], arr[largest]);
        heapify(arr, n, largest);
    }
}

// main function to do heap sort
void hSort(int arr[], int n)
{
    // Build max heap
    for (int i = n / 2 - 1; i >= 0; i--)
        heapify(arr, n, i);

    // Heap sort
    for (int i = n - 1; i >= 0; i--)
    {
        swap(arr[0], arr[i]);

        // Heapify root element to get highest element at root again
        heapify(arr, i, 0);
    }
}

extern "C" {

    int heapSort(int arraySize)
    {

        int array[arraySize];

        srand(0);

        for (int i = 0; i < arraySize; i++)
        {
            array[i] = rand();
        }

        hSort(array, arraySize);

        for (int i = 0; i < arraySize; i++)
            printf(" %d \n", array[i]);

        return 0;
    }
}
