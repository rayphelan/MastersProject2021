const std = @import("std");

extern fn print(u32) void;

fn search (myArray: []u8, x: u8, low: i8, high: i8) i8 {
    while (low <= high)
    {
        var mid: i32 = low + (high - low) / 2;

        if (myArray[mid] == x) {
            return mid;
        }

        if (myArray[mid] < x) {
            low = mid + 1;
        }
        else {
            high = mid - 1;
        }
    }

    return -1;
}


fn binarySearch() void {

    var array: [10]u8 = .{11, 22, 33, 44, 34, 77, 234, 63, 44, 2};
    var result: u8 = search(array, 11, 0, 9);

    if (result == -1)
    {
        print(search ++ " Not found \n");
    }
    else {
        print(search ++ " Found at index \n" ++ result);
    }

    return 0;
}

pub fn main() void {
    binarySearch();
}