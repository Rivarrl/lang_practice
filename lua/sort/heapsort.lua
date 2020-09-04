package.path = package.path ..';../utils/?.lua'
local cc = require("common")

-- 交换
function swap(arr, i, j)
    local tmp = arr[i]
    arr[i] = arr[j]
    arr[j] = tmp
end

-- 下沉
function sink(arr, i, n)
    local l = i * 2
    local r = l + 1
    local j = i
    if l <= n and arr[l] > arr[j] then
        j = l
    end
    if r <= n and arr[r] > arr[j] then
        j = r
    end
    if i ~= j then
        swap(arr, i, j)
        sink(arr, j, n)
    end
end

-- 堆排序
function heapsort(arr)
    for i = math.floor(#arr/2), 1, -1 do
        sink(arr, i, #arr)
    end
    swap(arr, 1, #arr)
    for n = #arr-1, 1, -1 do
        sink(arr, 1, n)
        swap(arr, 1, n)
    end
end

local arr = {4,5,7,3,1,6,2}
cc:parr(arr)
heapsort(arr)
cc:parr(arr)
