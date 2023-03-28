local class = require("libs.middleclass")

local Point = class("Point")

function Point:initialize(x, y)
    self.x = x
    self.y = y
end

function Point:__tostring()
    return string.format("[x:%d, y:%d]", self.x, self.y)
end

function Point.__add(pointA, pointB)
    return Point:new(pointA.x + pointB.x, pointA.y + pointB.y)
end

local pointA = Point:new(4, 3)
local pointB = Point:new(1920, 1080)

local result = pointA + pointB
print(result)

local result2 = result + result
print(result2)
