use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}

pub fn selection_sort_recursive(param_int_array:&mut [i32]) {
    selection_sort_recursive_process(param_int_array, 0);
}

pub fn selection_sort_recursive_process(param_int_array: &mut [i32], index: usize) {
 
    let arr_length = param_int_array.len();
 
    let mut min = index;
    let mut j = index + 1;
 
    while j <  arr_length {
        if param_int_array[j] < param_int_array[min] {
            min = j;
        }
        j+=1;
    }
    swap(param_int_array, min, index);
 
    if index + 1 < arr_length {
        selection_sort_recursive_process(param_int_array, index + 1)
    }
}

pub fn swap(param_int_array: &mut [i32], i: usize, j: usize ) {
    let temp = param_int_array[i];
    param_int_array[i] = param_int_array[j];
    param_int_array[j] = temp;
}

pub fn display(arr: &mut [i32]) {
    for x in arr {
        log(x.to_string());
    }
}

#[wasm_bindgen(start)]
pub fn main_js() {

    let mut numbers = [4, 65, 2, -31, 0, 99, 2, 83, 782, 1];
    selection_sort_recursive(&mut numbers);
    display(&mut numbers);
}