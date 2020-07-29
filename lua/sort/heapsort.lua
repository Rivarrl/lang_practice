package.path = package.path ..';../utils/?.lua'

-- 下沉
function sink(arr, i, n)
    local l = i * 2
    local r = l + 1
    local j = i
    if l < n and arr[l] > arr[j] then
        j = l
    end
    if r < n and arr[r] > arr[j] then
        j = r
    end
    if i ~= j then
        sink(arr, j, n)
    end
end

function heapsort(arr)
    for i = #arr, 1 do
        
    end
end

local arr = {4,5,3,1,2}
heapsort(arr)
local utils = require "common"
utils.ptb(arr)
