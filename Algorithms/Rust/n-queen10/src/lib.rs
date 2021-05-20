use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}


fn print_solution(board: &mut [[i32; 4];4]) {
    
    for i in 0..4 {
        let mut line = String::from("");
        for j in 0..4 {
            line += &board[i][j].to_string();
        }
        log(line);
    }
}

/*
1  0  0  0  0  0  0  0  0  0 
0  0  0  0  0  0  0  1  0  0 
0  1  0  0  0  0  0  0  0  0 
0  0  0  0  0  0  0  0  1  0 
0  0  0  0  0  1  0  0  0  0 
0  0  1  0  0  0  0  0  0  0 
0  0  0  0  0  0  0  0  0  1 
0  0  0  1  0  0  0  0  0  0 
0  0  0  0  0  0  1  0  0  0 
0  0  0  0  1  0  0  0  0  0 
*/

fn is_safe(board: &mut [[i32; 4];4], row: usize, col: usize) -> bool {
    
    log("row ".to_string() + &row.to_string());
    log("col ".to_string() + &col.to_string());

    /* Check this row on left side */
    for i in 0..col {
        if board[row][i] == 1 {
            log("this row on left side=1a".to_string());
            return false;
        }
    }

    use std::convert::TryInto;

    let mut i:i32 = row.try_into().unwrap();
    let mut j:i32 = col.try_into().unwrap();

    while i >= 0 && j >= 0 {
        (if board[i as usize][j as usize] == 1 {
            log("upper diagonal on left side=1b".to_string());
            return false;
        }); 

        i = i - 1;
        j = j - 1;
    }

    let mut ii:i32 = row.try_into().unwrap();
    let mut jj:i32 = col.try_into().unwrap();
    
    while jj >= 0 && ii < 4 {
        (if board[ii as usize][jj as usize] == 1 {
            log("lower diagonal on left side=1c".to_string());
            return false;
        });

        ii = ii + 1;
        jj = jj - 1;
    }

    // /* Check upper diagonal on left side */
    // for (i, j) in (row..=0).zip(col..=0) {
    //     if board[i][j] == 1 {
    //         log("upper diagonal on left side=1b".to_string());
    //         return false;
    //     } 
    // }

    // /* Check lower diagonal on left side */
    // for (i, j) in (row..4).zip(col..=0) {
    //     if board[i][j] == 1 {
    //         log("lower diagonal on left side=1c".to_string());
    //         return false;
    //     } 
    // }


    log("SAFE".to_string());
    return true;
}

fn solve_nq_until(board: &mut [[i32; 4];4], col: usize) -> bool {
    
    if col >= 4 {
        return true;
    }

    for i in 0..4 {
        if is_safe(board, i, col) {
            log("adding queen to ".to_string() + &i.to_string() + &" ".to_string() + &" ".to_string() + &col.to_string());
            board[i][col] = 1;

            if solve_nq_until(board, col + 1) {
                return true;
            }

            log("backtrack 0".to_string());
            board[i][col] = 0;
        }
    }

    return false;
}

fn solve_nq() -> bool {

    let mut board = [
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0],
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