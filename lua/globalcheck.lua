-- local _tenv = {}
-- _tenv.print = _ENV.print
-- _tenv.pairs = _ENV.pairs
-- _tenv.type = _ENV.type
-- _tenv.require = _ENV.require
-- _ENV = _tenv
local tt2 = require "tt2"
print(gg)
for k, v in pairs(_ENV) do
    if type(v) == "table" then
    elseif type(v) ~= "function" then
        print("_G." .. k .. " => " .. v)
    end
end
local f = require "utils.common"
require "utils.string"
ggg = 123
local target_dir = '/Users/liu/Projects/lua/lang_practice/lua'
local function walk(path)
    local cmd = "ls "..path
    local s = io.popen(cmd)
    local fileLists = s:read("*all")
    local res = {}
    for _, filep in pairs(fileLists:split("\n")) do
        local dpath = path .. "/" .. filep
        local file = io.open(dpath, "r")
        if file then file:close() end
        if filep:endsWith(".lua") then
            table.insert(res, dpath)
        elseif not string.find(filep, ".") then
            local tmp = walk(dpath)
            for k, v in pairs(tmp) do
                table.insert(res, v)
            end
        end
    end
    return res
end
local res = walk(target_dir)
f:ptb(res)