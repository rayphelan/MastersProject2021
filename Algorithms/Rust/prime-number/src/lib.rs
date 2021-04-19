use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: Vec<u64>);
}

#[wasm_bindgen]
pub fn primes_up_to(limit: u64) -> Vec<u64> {
    let mut vec: Vec<_> = (2..=limit).collect();

    for p in 2..=limit {
        vec.retain(|&x| x <= p || x % p != 0);
    }

    vec
}

#[wasm_bindgen(start)]
pub fn main_js() -> Result<(), JsValue> {
    log(primes_up_to(20000));
    Ok(())
}