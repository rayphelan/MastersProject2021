use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: u64);
}

fn fibonacci(n: i32) -> u64 {
    if n <= 1 { return 1 }
    return fibonacci(n-1) + fibonacci(n-2);
}

#[wasm_bindgen(start)]
pub fn main_js() {
    log(fibonacci(45));
}