#include <stdio.h>
#include <stdint.h>

static uint64_t factorial(uint64_t n) {
    if (n == 0)
        return 1;
    else
        return (n * factorial(n - 1));
}

int main() {
    printf("%llu \n", factorial(40));
    return 0;
}
