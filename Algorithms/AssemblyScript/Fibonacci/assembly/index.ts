// The entry file of your WebAssembly module.

export function fibonacci(n: i32): i32 {
  return n <= 1 ? 1 : fibonacci(n-1) + fibonacci(n-2);
}
