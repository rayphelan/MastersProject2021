#include <iostream>
#include <cmath>
using namespace std;

extern "C" {
    int primeNumber(int rangenumber)
    {
        int c = 0, num = 2, i, letest = 0;

        using std::cout;
        using std::endl;

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
        cout << rangenumber << "th prime number is " << letest << endl;
        return 0;
    }
}