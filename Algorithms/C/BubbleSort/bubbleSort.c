#include <stdio.h>
#include <stdlib.h>

int main()
{
    // int number[] = {12, 56, 2, 11, 1, 90};

    int temp, i, j;
    int count = 10;
    int number[count];

    srand(0);

    for (i = 0; i < count; i++) {
        number[i] = rand();
    }

    for (i = count - 2; i >= 0; i--)
    {
        for (j = 0; j <= i; j++)
        {
            if (number[j] > number[j + 1])
            {
                temp = number[j];
                number[j] = number[j + 1];
                number[j + 1] = temp;
            }
        }
    }

    for (i = 0; i < count; i++)
        printf(" %d \n", number[i]);

    return 0;
}