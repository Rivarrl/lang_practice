local commonfunc = {}

-- 打印table，数组型输出
function commonfunc:parr(tb)
    local p
    for k, v in pairs(tb) do
        if p == nil then
            p = v
        else
            p = p..', '..v
        end
    end
    print('['..p..']')
end

-- 打印table，json格式输出
function commonfunc:ptb(tb, pr)
    local concatp = function(p,v)
        if p == nil then
            p = v
        else
            p = p .. ':' .. v
        end
    end
    local p
    for k, v in pairs(tb) do
        local typeV = type(v)
        if typeV ~= 'function' then
            if typeV ~= 'table' then
                concatp(p, v)
            else
                concatp(p, f:ptb(v, 1))
            end
        end
    end
    if pr == nil then
        print(p)
    end
    return p
end

-- 翻转数组
function commonfunc:arrreverse(arr)
    local res = {}
    for i = 1, #arr do
        local j = #arr - 1 - i
        res[i] = arr[j]
    end
    return res
end

return commonfunc