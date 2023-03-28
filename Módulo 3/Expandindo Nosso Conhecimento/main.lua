os.execute("chcp 65001 > NUL")

local Creeper = require("creatures.creeper")
local Sheep = require("creatures.sheep")

local myCreeper1 = Creeper:new()
local myCreeper2 = Creeper:new()
local mySheep = Sheep:new()

myCreeper1.health = 0
myCreeper2.health = myCreeper2.health * 0.3
mySheep.health = mySheep.health * 0.9

local creatures = {
    myCreeper1,
    nil,
    mySheep
}
for _, creature in pairs(creatures) do
    creature:printInfo()
end
