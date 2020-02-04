// Index_Equal_Value(T, st, end)
// if st > end
//     then return -1
// mid <- (st + end) / 2
// if T[mid] > mid
//     then return Index_Equal_Value(T, st, mid - 1)
// else if T[mid] < mid
//     then return Index_Equal_Value(T, mid + 1, end)
// else return mid

