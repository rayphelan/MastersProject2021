use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}


pub fn bubble_sort(arr: &mut [i32]) {
    let mut swapped = true;
    while swapped {
        // No swap means array is sorted.
        swapped = false;
        for i in 1..arr.len() {
            if arr[i - 1] > arr[i] {
                arr.swap(i - 1, i);
                swapped = true
            }
        }
    }
}

pub fn display(arr: &mut [i32]) {
    for x in arr {
        log(x.to_string());
    }
}

#[wasm_bindgen(start)]
pub fn main_js() {

    let mut numbers = [4, 65, 2, -31, 0, 99, 2, 83, 782, 1];
    bubble_sort(&mut numbers);
    display(&mut numbers);
}
