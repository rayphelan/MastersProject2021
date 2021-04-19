use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}

pub fn heapsort(arr: &mut [i32]) {
    // -- Heapify part --
    // This procedure would build a valid max-heap.
    // (or min-heap for sorting descendantly)
    let end = arr.len();
    for start in (0..end / 2).rev() {
        // Skip leaf nodes (end / 2).
        sift_down(arr, start, end - 1);
    }

    // -- Sorting part --
    // Iteratively sift down unsorted part (the heap).
    for end in (1..arr.len()).rev() {
        arr.swap(end, 0);
        sift_down(arr, 0, end - 1);
    }
}

fn sift_down(arr: &mut [i32], start: usize, end: usize) {
    let mut root = start;
    loop {
        let mut child = root * 2 + 1; // Get the left child
        if child > end {
            break;
        }
        if child < end && arr[child] < arr[child + 1] {
            // Right child exists and is greater.
            child += 1;
        }

        if arr[root] < arr[child] {
            // If child is greater than root, swap'em!
            arr.swap(root, child);
            root = child;
        } else {
            break;
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
    heapsort(&mut numbers);
    display(&mut numbers);
}