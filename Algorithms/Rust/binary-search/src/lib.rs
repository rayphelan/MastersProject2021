use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: i32);
}

pub fn binary_search<T: PartialEq + PartialOrd>(item: &T, arr: &[T]) -> i32 {
    let mut idx_pos = -1; // -1 indicates not found

    if arr.is_empty() {
        return idx_pos;
    }

    let mut left = 0;
    let mut right = arr.len() - 1;

    while left < right {
        let mid = left + (right - left) / 2;

        if &arr[mid] > item {
            right = mid - 1;
        } else if &arr[mid] < item {
            left = mid + 1;
        } else {
            left = mid;
            break;
        }
    }

    if &arr[left] == item {
        idx_pos = left as i32;
        return idx_pos;
    } else {
        return idx_pos;
    }
}

#[wasm_bindgen(start)]
pub fn main_js() {

    let index = binary_search(&782, &vec![4, 65, 2, -31, 0, 99, 2, 83, 782, 1]);

    log(index);
}
