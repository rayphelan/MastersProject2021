use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}


fn print_solution(board: &mut [[i32; 24];24]) {
    
    for i in 0..24 {
        let mut line = String::from("");
        for j in 0..24 {
            line += &board[i][j].to_string();
        }
        log(line);
    }
}

fn is_safe(board: &mut [[i32; 24];24], row: usize, col: usize) -> bool {

    /* Check this row on left side */
    for i in 0..col {
        if board[row][i] == 1 {

            return false;
        }
    }

    use std::convert::TryInto;

    let mut i:i32 = row.try_into().unwrap();
    let mut j:i32 = col.try_into().unwrap();

    while i >= 0 && j >= 0 {
        (if board[i as usize][j as usize] == 1 {

            return false;
        }); 

        i = i - 1;
        j = j - 1;
    }

    let mut ii:i32 = row.try_into().unwrap();
    let mut jj:i32 = col.try_into().unwrap();
    
    while jj >= 0 && ii < 24 {
        (if board[ii as usize][jj as usize] == 1 {

            return false;
        });

        ii = ii + 1;
        jj = jj - 1;
    }

    return true;
}

fn solve_nq_until(board: &mut [[i32; 24];24], col: usize) -> bool {
    
    if col >= 24 {
        return true;
    }

    for i in 0..24 {
        if is_safe(board, i, col) {

            board[i][col] = 1;

            if solve_nq_until(board, col + 1) {
                return true;
            }

            board[i][col] = 0;
        }
    }

    return false;
}

fn solve_nq() -> bool {

    let mut board = [
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    ];

    if solve_nq_until(&mut board, 0) == false {
        log("Solution does not exist".to_string());
        return false;
    }

    print_solution(&mut board);
    return true;
}

#[wasm_bindgen(start)]
pub fn main_js() {
    solve_nq();
}