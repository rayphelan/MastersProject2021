use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: f64);
}

fn prime_number() {
    let mut c :i32 = 0;
    let mut num :i32 = 2;
    let mut letest :f64 = 0.00;

    let rangenumber :i32 = 100000;

    while c != rangenumber {
        let mut count :i32 = 0;

        for i in 2..((num as f64).sqrt() as i64) {
            if (num as i64) % (i as i64) == 0 {
                count+=1;
                break;
            }
        }
        if count == 0 {
            c+=1;
            letest = num as f64;
        }
        num = num + 1;
    }
    
    log(letest);
}

#[wasm_bindgen(start)]
pub fn main_js() {
    prime_number();
}