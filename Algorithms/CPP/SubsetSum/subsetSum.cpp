// A recursive solution for subset sum problem
#include <iostream>
#include <stdbool.h>
#include <ctime>
#include <cstdlib>
using namespace std;

// Returns true if there is a subset
// of set[] with sum equal to given sum
bool isSubsetSum(int set[], int n, int sum)
{
    // Base Cases
    if (sum == 0)
        return true;
    if (n == 0)
        return false;
 
    // If last element is greater than sum,
    // then ignore it
    if (set[n - 1] > sum)
        return isSubsetSum(set, n - 1, sum);
 
    /* else, check if sum can be obtained by any
of the following:
      (a) including the last element
      (b) excluding the last element   */
    return isSubsetSum(set, n - 1, sum)
           || isSubsetSum(set, n - 1, sum - set[n - 1]);
}
 
extern "C" {
    int subsetSum(int arraySize)
    {
        int array[arraySize];
        int maxNum = arraySize * 10;

        srand(time(0));

        for (int i = 0; i < arraySize; i++)
        {
            array[i] = rand()%maxNum;
        }

        int x = rand()%maxNum;

        // for (int i = 0; i < arraySize; i++)
        //     printf(" %d \n", array[i]);

        int set[] = { 3, 34, 4, 12, 5, 2 };
        int sum = 9;
        int n = sizeof(set) / sizeof(set[0]);

        if (isSubsetSum(array, arraySize, x) == true)
            cout << "Found a subset of with given sum " << x << endl;
        else
            cout << "No subset with given sum of " << x << endl;
        return 0;
    }
}