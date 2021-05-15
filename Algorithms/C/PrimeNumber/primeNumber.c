// #include <stdio.h>
#include <math.h>
int primeNumber()
{
    int rangenumber = 100000;
    int c = 0, num = 2, i, letest = 0;

    while (c != rangenumber)
    {
        int count = 0;
        for (i = 2; i <= sqrt(num); i++)
        {
            if (num % i == 0)
            {
                count++;
                break;
            }
        }
        if (count == 0)
        {
            c++;
            letest = num;
        }
        num = num + 1;
    }
    // printf("%dth prime number is %d \n", rangenumber, letest);
    return 0;
}