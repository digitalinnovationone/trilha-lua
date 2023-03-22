os.execute("chcp 65001 > NUL")

local Creeper = require("creatures.creeper")
local Sheep = require("creatures.sheep")

local myCreeper1 = Creeper:new()
local myCreeper2 = Creeper:new()
local mySheep = Sheep:new()

myCreeper1.health = 0

local creatures = {
    myCreeper1,
    myCreeper2,
    mySheep
}
for _, creature in pairs(creatures) do
    local hostileString = creature:isHostile() and "hostil" or "dócil"
    local aliveString = creature:isAlive() and "viva" or "morta"
    print(string.format("Nossa criatura %s é %s, e ela está %s", creature:getName(), hostileString, aliveString))
end

print(myCreeper1.banana)
