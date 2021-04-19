use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}


pub fn swap(param_int_array: &mut [i32], i: usize, j: usize ) {
    let temp = param_int_array[i];
    param_int_array[i] = param_int_array[j];
    param_int_array[j] = temp;
}

pub fn partition(param_int_array: &mut [i32], start: usize, end: usize ) -> i32 {
    let pivot = param_int_array[end];
 
    let mut index = start;
 
    let mut i = start;
    while i < end {
 
        if param_int_array[i] < pivot {
            swap(param_int_array, i, index);
            index+=1;
        }
 
        i+=1;
    }
    swap(param_int_array, index, end);
    return index as i32;
}

pub fn quick_sort(param_int_array: &mut [i32], start: usize, end: usize) {
    if start >= end {
        return;
    }
    let pivot = partition(param_int_array, start, end);
    println!("=={}", pivot);
 
    quick_sort(param_int_array, start, (pivot - 1) as usize);
    quick_sort(param_int_array, (pivot + 1) as usize, end);
}

pub fn display(arr: &mut [i32]) {
    for x in arr {
        log(x.to_string());
    }
}

#[wasm_bindgen(start)]
pub fn main_js() {

    let mut numbers = [4, 65, 2, -31, 0, 99, 2, 83, 782, 1];
    let last_index = numbers.len() - 1;

    quick_sort(&mut numbers, 0, last_index);

    display(&mut numbers);
}