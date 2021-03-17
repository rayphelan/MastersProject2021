const std = @import("std");

extern fn print(u32) void;

export fn fibonacci(n: u32) u32 {
    if (n <= 1) return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

export fn fib(n: u32) void {
    print(fibonacci(n));
}
