local f = {}

local concatp = function(p,x,sep)
    if p == nil then
        return x
    else
        return p .. sep .. x
    end
end
local indentgen = function(x, pr)
    local pre = '  '
    local curindent = ''
    for i=1, pr+1 do
        curindent = curindent .. pre
    end
    x = string.gsub(x, ',\n$', '')
    local ret = '{\n'..x
    ret = string.gsub(ret, '\n', '\n'..curindent)
    ret = ret .. '\n}'
    return ret
end
-- 打印table，json格式输出
function f:ptb(tb, pr)
    if pr == nil then
        pr = 0
    end
    local p
    for k, v in pairs(tb) do
        local typeV = type(v)
        if typeV ~= 'function' then
            if typeV ~= 'table' then
                p = concatp(p, concatp(k, v, ' : '), ',\n')
            else
                p = concatp(p, concatp(k, f:ptb(v, 1), ' : '), ',\n')
            end
        end
    end
    p = indentgen(p, pr)
    if pr == 0 then
        print(p)
    end
    return p
end

-- [1,3],[2,5],[3,0],[4,2],[5,1]
local arr = {{pv=1, iv=3},{pv=2, iv=5}, {pv=3,iv=0}, {pv=4,iv=2}, {pv=5,iv=1}}
f:ptb(arr)
table.sort(arr, function(a, b) return a.pv>b.pv end)
f:ptb(arr)
for k, v in pairs(arr) do
    print(v.pv, v.iv)
end