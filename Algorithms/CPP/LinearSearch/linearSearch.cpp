#include <ctime>
#include <cstdlib>
#include <iostream>
using namespace std;

int search(int array[], int n, int x)
{

    // Going through array sequencially
    for (int i = 0; i < n; i++)
        if (array[i] == x)
            return i;
    return -1;
}

extern "C" {
    int linearSearch(int arraySize)
    {

        int array[arraySize];
        int maxNum = arraySize * 10;

        srand(time(0));

        for (int i = 0; i < arraySize; i++)
        {
            array[i] = rand() % maxNum;
        }

        int x = rand() % maxNum;

        int result = search(array, arraySize, x);

        (result == -1) 
            ? std::cout << "Element not found" << std::endl
            : std::cout << "Element found at index: " << result << std::endl;

        return 0;
    }
}