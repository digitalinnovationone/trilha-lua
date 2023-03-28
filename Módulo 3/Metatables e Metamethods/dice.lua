local utils = require("utils")
utils.enableUtf8()

----------------------------------

-- Create dice
local dice = {
    sides = 6,
    result = 1,
    characters = { "⚀", "⚁", "⚂", "⚃", "⚄", "⚅" }
}

function dice:throw()
    self.result = math.random(1, self.sides)
    return self.result
end

function dice:tostring()
    return string.format("Dado de %d lados: %s (%d)", self.sides, self.characters[self.result], self.result)
end

-- Create metatable

local meta = {}

function meta.__call(t)
    return t:throw()
end

-- meta.__call = dice.throw

function meta.__tostring(t)
    return t:tostring()
end

setmetatable(dice, meta)

----------------------------------

print(dice())
print(dice)
