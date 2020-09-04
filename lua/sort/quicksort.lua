package.path = package.path ..';../utils/?.lua'
function swap(arr, i, j)
    local tmp = arr[i]
    arr[i] = arr[j]
    arr[j] = tmp
end
function _qsort(arr, l, r)
    if l > r then
        return
    end
    local pivot = arr[l]
    local lo = l
    local hi = r
    while lo < hi do
        while lo < hi and arr[hi] >= pivot do
            hi = hi - 1
        end
        while lo < hi and arr[lo] <= pivot do
            lo = lo + 1
        end
        if lo < hi then
            swap(arr, lo, hi)
            lo = lo + 1
            hi = hi - 1
        end
    end
    swap(arr, lo, l)
    _qsort(arr, l, lo-1)
    _qsort(arr, lo+1, r)
end

function quicksort(arr)
    _qsort(arr, 1, #arr)
    return arr
end

local arr = {4,5,3,1,2}
quicksort(arr)
local cc = require("common")
cc:parr(arr)