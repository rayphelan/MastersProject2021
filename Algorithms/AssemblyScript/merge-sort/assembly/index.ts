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

const L = new Array<number>(arraySize);
const M = new Array<number>(arraySize);

// Merge two subarrays L and M into arr
function merge(p :i32, q :i32, r :i32) :void
{

    // Create L ← A[p..q] and M ← A[q+1..r]
    let n1 :i32 = q - p + 1;
    let n2 :i32 = r - q;

    for (let i :i32 = 0; i < n1; i++)
        L[i] = array[p + i];
    for (let j :i32 = 0; j < n2; j++)
        M[j] = array[q + 1 + j];

    // Maintain current index of sub-arrays and main array
    let i :i32 = 0;
    let j :i32 = 0;
    let k :i32 = p;

    // Until we reach either end of either L or M, pick larger among
    // elements L and M and place them in the correct position at A[p..r]
    while (i < n1 && j < n2)
    {
        if (L[i] <= M[j])
        {
            array[k] = L[i];
            i++;
        }
        else
        {
            array[k] = M[j];
            j++;
        }
        k++;
    }

    // When we run out of elements in either L or M,
    // pick up the remaining elements and put in A[p..r]
    while (i < n1)
    {
        array[k] = L[i];
        i++;
        k++;
    }

    while (j < n2)
    {
        array[k] = M[j];
        j++;
        k++;
    }
}

// Divide the array into two subarrays, sort them and merge them
function mSort(l :i32, r :i32) :void
{
    if (l < r)
    {

        // m is the point where the array is divided into two subarrays
        let m :i32 = l + (r - l) / 2;

        mSort(l, m);
        mSort(m + 1, r);

        // Merge the sorted subarrays
        merge(l, m, r);
    }
}

export function mergeSort() :f64
{
    mSort(0, arraySize - 1);

    return array[3];
}
