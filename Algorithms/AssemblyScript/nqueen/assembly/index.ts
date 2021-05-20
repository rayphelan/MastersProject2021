const N: i32 = 10;
let board :string[][] = [];

let result :string = '';

// /* A utility function to print solution */
function printSolution() :string
{
  for (let i :i32 = 0; i < N; i++)
  {
    for (let j :i32 = 0; j < N; j++) {
      let str :string = board[i][j];
      result = result.concat(str.concat(' '));
    }
    result = result.concat('\n');
  }
  return result.concat('----------------------\n');
}

/* A utility function to check if a queen can
   be placed on board[row][col]. Note that this
   function is called when "col" queens are
   already placed in columns from 0 to col -1.
   So we need to check only left side for
   attacking queens */
function isSafe(row :i32, col :i32) :boolean
{
  let i :i32;
  let j :i32;

  /* Check this row on left side */
  for (i = 0; i < col; i++)
    if (board[row][i] == '1')
      return false;

  /* Check upper diagonal on left side */
  for (i = row, j = col; i >= 0 && j >= 0; i--, j--)
    if (board[i][j] == '1')
      return false;

  /* Check lower diagonal on left side */
  for (i = row, j = col; j >= 0 && i < N; i++, j--)
    if (board[i][j] == '1')
      return false;

  return true;
}

/* A recursive utility function to solve N
   Queen problem */
function solveNQUtil(col :i32) :boolean
{
  /* base case: If all queens are placed
    then return true */
  if (col >= N)
    return true;

  /* Consider this column and try placing
     this queen in all rows one by one */
  for (let i :i32 = 0; i < N; i++)
  {
    /* Check if the queen can be placed on
      board[i][col] */
    if (isSafe(i, col)) {
      /* Place this queen in board[i][col] */
      board[i][col] = '1';

      /* recur to place rest of the queens */
      if (solveNQUtil(col + 1))
        return true;

      /* If placing queen in board[i][col]
         doesn't lead to a solution, then
         remove queen from board[i][col] */
      board[i][col] = '0'; // BACKTRACK
    }
  }

  /* If the queen cannot be placed in any row in
      this colum col  then return false */
  return false;
}

/* This function solves the N Queen problem using
   Backtracking. It mainly uses solveNQUtil() to 
   solve the problem. It returns false if queens
   cannot be placed, otherwise, return true and
   prints placement of queens in the form of 1s.
   Please note that there may be more than one
   solutions, this function prints one  of the
   feasible solutions.*/
function solveNQ() :boolean
{

  let i :i32;
  let j :i32;

  if (solveNQUtil(0) == false) {
    result = "Solution does not exist";
    return false;
  }

  printSolution();

  return true;
}


// driver program to test above function
export function nQueen() :string
{
  result = '';
  board = [
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
    ['0','0','0','0','0','0','0','0','0','0',],
  ];

  solveNQ();
  return result;
}