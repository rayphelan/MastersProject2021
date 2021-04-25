export function primeNumber() :f64
{
    let c :i32 = 0;
    let num :f64 = 2;
    let i :i32;
    let letest :f64 = 0;

    let rangenumber :i32 = 10;

    while (c != rangenumber)
    {
        let count :i32 = 0;
        for (i = 2; i <= sqrt(num); i++)
        {
            if (num % i == 0)
            {
                count++;
                break;
            }
        }
        if (count == 0)
        {
            c++;
            letest = num;
        }
        num = num + 1;
    }
    
    return letest;
}