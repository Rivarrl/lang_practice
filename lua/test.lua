-- 写一些验证用的

function pp(msg)
    print("\n========== "..msg.." ==========")
end
local cc = require("utils.common")

-- 获取子数组
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

pp("test subArray")
local arr = {1,2,3,4,5,6,7,8,9,10}
local res = table.subArray(arr, 2, 5)
for i, v in ipairs(res) do
    print(v)
end

pp("test for")
for i=2,2,1 do
    print(i)
end

pp("test tonumber")
print(tonumber("1.20"))

pp("test sorta")
-- [1,3],[2,5],[3,0],[4,2],[5,1]
local arr = {{pv=1, iv=3},{pv=2, iv=5}, {pv=3,iv=0}, {pv=4,iv=2}, {pv=5,iv=1}}
cc:ptb(arr)
table.sort(arr, function(a, b) return a.pv>b.pv end)
cc:ptb(arr)