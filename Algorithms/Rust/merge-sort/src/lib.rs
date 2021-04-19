use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}

pub fn mergesort(arr: &mut [i32]) {
    let mid = arr.len() / 2;
    if mid == 0 {
        return;
    }

    mergesort(&mut arr[..mid]);
    mergesort(&mut arr[mid..]);

    // Create an array to store intermediate result.
    let mut ret = arr.to_vec();

    // Merge the two piles.
    merge(&arr[..mid], &arr[mid..], &mut ret[..]);

    // Copy back the result back to original array.
    arr.copy_from_slice(&ret);
}

fn merge(arr1: &[i32], arr2: &[i32], ret: &mut [i32]) {
    let mut left = 0; // Head of left pile.
    let mut right = 0; // Head of right pile.
    let mut index = 0;

    // Compare element and insert back to result array.
    while left < arr1.len() && right < arr2.len() {
        if arr1[left] <= arr2[right] {
            ret[index] = arr1[left];
            index += 1;
            left += 1;
        } else {
            ret[index] = arr2[right];
            index += 1;
            right += 1;
        }
    }

    // Copy the reset elements to returned array.
    // `memcpy` may be more performant than for-loop assignment.
    if left < arr1.len() {
        ret[index..].copy_from_slice(&arr1[left..]);
    }
    if right < arr2.len() {
        ret[index..].copy_from_slice(&arr2[right..]);
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
    mergesort(&mut numbers);
    display(&mut numbers);
}