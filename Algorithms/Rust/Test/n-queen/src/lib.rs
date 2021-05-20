use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: String);
}


use std::cmp::max;
use std::cmp::min;

pub struct Board {
    width: usize,
    height: usize,
    queens: Vec<(usize, usize)>
}

impl Board {
    pub fn new(board: &Board) -> Board {
        return Board {
            width: board.width,
            height: board.height,
            queens: board.queens.to_vec()
        }
    }

    pub fn display(&self) {
        let mut squares = vec![vec![false; self.height]; self.width];

        for queen in &self.queens {
            let &(qi, qj) = queen;
            squares[qi][qj] = true;
        }

        for row in squares {
            let mut line = String::from("");
            for square in row {
                match square {
                    true => line += "1 ",
                    false => line += "0 "
                }
            }
            log(line);
        }
    }
}

struct BoardGenerator {
    initial_board: Board,
    i: usize,
    j: usize
}

impl BoardGenerator {
    fn from(board: Board) -> BoardGenerator {
        return BoardGenerator {
            initial_board: board,
            i: 0,
            j: 0
        }
    }

    fn next(&mut self) -> Option<Board> {
        self.j += 1;

        if self.j >= self.initial_board.height {
            self.i += 1;
            self.j = 0;
        }

        if self.i >= self.initial_board.width {
            return None;
        }

        match self.initial_board.queens.binary_search(&(self.i, self.j)) {
            Ok(_) => return self.next(),
            Err(idx) => {
                let mut next_board = Board::new(&self.initial_board);
                next_board.queens.insert(idx, (self.i, self.j));
                return Some(next_board);
            }
        }
    }
}


pub fn incorrect(board : &Board) -> bool {
    for queen in &board.queens {
        let &(qi, qj) = queen;
        for other_queen in &board.queens {
            let &(oi, oj) = other_queen;
            let h_diff = max(oi, qi) - min(oi, qi);
            let v_diff = max(oj, qj) - min(oj, qj);

            if oi == qi && oj == qj {
                continue;
            } else if oi == qi || oj == qj || h_diff == v_diff {
                return true;
            }
        }
    }

    return false;
}


pub fn correct(board : &Board, queen_number: usize) -> bool {
    if board.queens.len() == queen_number {
        return true;
    } else {
        return false;
    }
}


pub fn backtrack(board : Board, queen_requirement: usize) -> Option<Board> {
    if incorrect(&board) { return None; }
    if correct(&board, queen_requirement) { return Some(board) }

    let mut generator = BoardGenerator::from(board);
    while let Some(next_board) = generator.next() {
        if let Some(solution) = backtrack(next_board, queen_requirement) {
            return Some(solution);
        }
    }

    return None;
}


#[wasm_bindgen(start)]
pub fn main_js() {
    let size : usize = 10;
    let board = Board { width: size, height: size, queens: vec![] };
    if let Some(solution) = backtrack(board, size) {
        solution.display();
    } 
    else {
        log("No solution found.".to_string())
        // return false;
    }
}