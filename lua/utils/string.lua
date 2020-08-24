function string:split(sep)
    local sep, fields = sep or "\t", {}
    local pattern = string.format("([^%s]+)", sep)
    self:gsub(pattern, function(c) fields[#fields+1] = c end)
    return fields
end

function string:endsWith(t)
    if #self < #t then
        return false
    end
    for i = 1, #t do
        local tj = #t + 1 - i
        local sj = #self + 1 - i
        if t:sub(tj, tj) ~= self:sub(sj, sj) then
            return false
        end
    end
    return true
end