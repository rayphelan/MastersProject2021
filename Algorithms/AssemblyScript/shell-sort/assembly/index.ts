const arraySize: i32 = 5;
// const array = new Array<number>(arraySize);

// for (let i: i32 = 0; i < arraySize; i++) {
//   array[i] = Math.floor(Math.random() * (arraySize - 1) + 1)
// }

const array = new Array<number>(arraySize);
array[0] = 50; // 2
array[1] = 30; // 1
array[2] = 60; // 3
array[3] = 20; // 0
array[4] = 70; // 4

// Shell sort
function sSort() :void
{
    // Rearrange elements at each n/2, n/4, n/8, ... intervals
    for (let interval :i32 = arraySize / 2; interval > 0; interval /= 2)
    {
        for (let i :i32 = interval; i < arraySize; i += 1)
        {
            let temp :f64 = array[i];
            let j :i32;
            for (j = i; j >= interval && array[j - interval] > temp; j -= interval)
            {
                array[j] = array[j - interval];
            }
            array[j] = temp;
        }
    }
}

export function shellSort() :f64
{

    sSort();

    return array[3];
}