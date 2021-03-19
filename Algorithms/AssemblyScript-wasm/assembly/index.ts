// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
  return a + b;
}

export function fibonacci(a: i32): i32 {
  return a <= 1 ? 1 : fibonacci(a - 1) + fibonacci(a -2);
}
