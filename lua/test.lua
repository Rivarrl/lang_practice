-- 写一些验证用的
function testfor()
    for i=2,2,1 do
        print(i)
    end
end

function table.subArray(arr, i, n)
    local res = {}
    for j = i, i+n-1 do
        if j > #arr then
            break
        end
        table.insert(res, arr[j])
    end
    return res
end


local arr = {1,2,3,4,5,6,7,8,9,10}
local res = table.subArray(arr, 2, 5)
for i, v in ipairs(res) do
    print(v)
end