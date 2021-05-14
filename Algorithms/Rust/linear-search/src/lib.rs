use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: Option<usize>);
}

pub fn linear_search<T>(arr: &[T], target: &T) -> Option<usize>
where
    T: PartialEq,
{
    for (index, item) in arr.iter().enumerate() {
        if item == target {
            return Some(index);
        }
    }
    None
}

#[wasm_bindgen(start)]
pub fn main_js() {

    let mut numbers = [];
    
    for find in 0..1000000 {
        let index = linear_search(&mut numbers, &find);
        log(index);
        // linear_search(&mut numbers, &find);
    }
    
    // let index = linear_search(&mut numbers, &99);
    // log(index);
}
