local f = {}

-- 打印table
function f:ptb(tb)
    print('['..table.concat(tb, ', ')..']')
end

-- 翻转数组
function f:arrreverse(arr)
    local res = {}
    for i = 1, #arr do
        local j = #arr - 1 - i
        res[i] = arr[j]
    end
    return res
end

return f