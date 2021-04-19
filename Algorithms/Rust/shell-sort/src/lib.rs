use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}

pub fn shell_sort<T: Ord + Copy>(arr: &mut [T]) {
    let len = arr.len();
    let mut gap = len as i32 / 2;

    while gap > 0 {
        for i in gap..len as i32 {
            let temp = arr[i as usize];
            let mut j = i;

            while j >= gap && arr[j as usize - gap as usize] > temp {
                arr.swap(j as usize, j as usize - gap as usize);
                j -= gap;
            }

            arr[j as usize] = temp;
        }
        gap /= 2;
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
    shell_sort(&mut numbers);
    display(&mut numbers);
}
