const arraySize: i32 = 100000;



// Function to partition the array on the basis of pivot element
function partition(low :i32, high :i32) :i32
{

    let pivot :f64 = array[high]
    let i :i32 = (low - 1);

    for (let j :i32 = low; j < high; j++)
    {
        if (array[j] <= pivot)
        {
            i++;

            let temp :f64 = array[i];
            array[i] = array[j];
            array[j] = temp;
        }
    }

    let temp :f64 = array[i + 1];
    array[i + 1] = array[high];
    array[high] = temp;
    
    return (i + 1);
}

function qSort(low :i32, high :i32) :void
{
    if (low < high)
    {
        let pi :i32 = partition(low, high);
        qSort(low, pi - 1);
        qSort(pi + 1, high);
    }
}

export function quickSort() :f64
{

    qSort(0, arraySize - 1);

    return array[0];
}