local animals1 = {
    Cats = 4,
    Dogs = 2
}
local animals2 = {
    Cats = 6,
    Sheep = 1
}

local meta = {}
function meta.__concat(a, b)
    local result = {}
    setmetatable(result, meta)
    for k,v in pairs(a) do
        result[k] = v
    end
    for k,v in pairs(b) do
        result[k] = v
    end
    return result
end

setmetatable(animals1, meta)
setmetatable(animals2, meta)


local result = animals1 .. animals2

for k,v in pairs(result) do
    print(k .. ": " .. v)
end
