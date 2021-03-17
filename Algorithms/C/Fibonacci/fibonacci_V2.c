#include <stdio.h>

int fibbonacci(int n) {
    return n <= 1 ? n : fibbonacci(n-1) + fibbonacci(n-2);
}

int main () {
    int num = 20;
    int i;

    for (i = 0; i < num; i++) {
        printf("%d\n", fibbonacci(i));
    }

    return 0;
}
