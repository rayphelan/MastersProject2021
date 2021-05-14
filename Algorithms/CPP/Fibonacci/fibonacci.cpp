extern "C" {
  int fib(int n) {
    if (n <= 1) return 1;
    return fib(n - 1) + fib(n - 2);
  }

  int fibonacci() {
    int n = 45;

    // fib(n);

    // return 0;

    int result = fib(n);

    return result;
  }
}
