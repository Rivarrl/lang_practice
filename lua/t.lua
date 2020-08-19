-- 临时功能本地调试
local f = require "utils.common"
local rechargeCfg = {"klwebpay_1.30", "klwebpay_13.00", "klwebpay_39.00", "klwebpay_65.00", "klwebpay_130.00", "klwebpay_260.00"}

function string.split(delimiter, str)
    if str==nil or str=='' or delimiter==nil then
        return nil
    end
    
    local result = {}
    for match in (str..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match)
    end
    return result
end

table.sort(rechargeCfg, function (x, y)
    local xk = string.split('_', x)
    local yk = string.split('_', y)
    return tonumber(yk[2]) > tonumber(xk[2])
end)

f:ptb(rechargeCfg)