const fib = n => n <= 1 ? 1 : fib(n - 1) + fib(n - 2);
console.log(fib(40));
