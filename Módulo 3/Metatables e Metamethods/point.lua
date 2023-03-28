-- Create metatable

local meta = {}

meta.__add = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) + (isBTable and b.x or b)
    result.y = (isATable and a.y or a) + (isBTable and b.y or b)
    return result
end

meta.__sub = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) - (isBTable and b.x or b)
    result.y = (isATable and a.y or a) - (isBTable and b.y or b)
    return result
end

meta.__mul = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) * (isBTable and b.x or b)
    result.y = (isATable and a.y or a) * (isBTable and b.y or b)
    return result
end

meta.__div = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) / (isBTable and b.x or b)
    result.y = (isATable and a.y or a) / (isBTable and b.y or b)
    return result
end

meta.__mod = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) % (isBTable and b.x or b)
    result.y = (isATable and a.y or a) % (isBTable and b.y or b)
    return result
end

meta.__pow = function(a, b)
    local result = {}
    setmetatable(result, meta)
    local isATable = type(a) == "table"
    local isBTable = type(b) == "table"
    result.x = (isATable and a.x or a) ^ (isBTable and b.x or b)
    result.y = (isATable and a.y or a) ^ (isBTable and b.y or b)
    return result
end


-- Create points

local mousePoint = {
    x = 4,
    y = 3
}
setmetatable(mousePoint, meta)

local webcamPoint = {
    x = 1800,
    y = 900
}
setmetatable(webcamPoint, meta)


-- Test

-- local result = mousePoint + webcamPoint
-- local result = mousePoint + 4
-- local result = mousePoint / 3.14
-- local result = mousePoint % 90
local result = mousePoint ^ 2
print(string.format("x: %f, y: %f", result.x, result.y))
