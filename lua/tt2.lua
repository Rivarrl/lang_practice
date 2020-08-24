-- 标准global/local变量
gg = "123"
local rrr = {}

-- 加注释的
-- xax = "xax"
-- local axa = "axa"

-- 行内注释情况
pp1 = {} -- ppp1 = {}
local pp2 = {} -- local ppp2 = {}
pp3 = {} -- local ppp3 = {}
local pp4 = {} -- ppp4 = {}

-- 函数
function aaa(arg1, arg2, arg3)
    -- 带逻辑表达式的
    local xxlocal = (gg >= 1 and gg <= 5 or gg == 6)
    if gg == 3 then
        -- local前缀的全局
        localxx = 123
    elseif gg <= 10 then
        -- local后缀
        yylocal = 223
    elseif gg >= 0 then
        -- 等号在table中
        local yy = {a=1,b=2}
    elseif gg ~= 5 then
        -- 换行的table
        zz = {
            a = 1,
            b = 2
        }
    end
end

-- 声明赋值分开的&多变量声明的
local qaq, gag, dad, pap
qaq, gag = 0, 1
xxx, yyy = 4, 5
-- 与table混合的
zzz, pp1.a = 2, 3
pp3['s'], www = 9, 8
-- 与local混合的
vvv, pap = 6, 7

-- local函数
local function app()
    wrrwr = 1
    local drrr = 555
    -- 行内function带有全局变量
    return function() x = 4 return x end
end

-- 匿名函数赋值
oo = function(x)
    -- 函数参数
    x = 1
end

-- 结果
-- 1:gg 10:pp1 12:pp3 21:localxx 24:yylocal 30:zz 40:xxx 40:yyy 42:zzz 43:www 45:vvv 49:wrrwr 52:x 55:oo