function fib(n: i32): i32 {
  return n <= 1 ? 1 : fib(n-1) + fib(n-2);
}

export function fibonacci(): i32 {
  const n: i32 = 45;
  const result: i32 = fib(n);

  return result;
}
