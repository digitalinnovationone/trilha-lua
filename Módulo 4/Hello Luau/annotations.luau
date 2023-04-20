-- Requires
local colorModule = require("color")

-- Função simples

local function printAttribute(key: string, value: number)
    if value <= 0 then
        print(key .. ": Zero")
    else
        print(key .. ": " .. value)
    end
end

printAttribute("Bananas", 12)




-- Structs

local myStruct: {callback: (n:number) -> boolean} = {
    callback = function(n:number) : boolean
        return n >= 0
    end
}

print(myStruct.callback(-1))
print(myStruct.callback(1))


local color: colorModule.Color = {r=0,g=0,b=0,a=0}
color.r = 255
color.a = 60




-- Listas
local nameList : { [number] : string } = {}
table.insert(nameList, "Creeper")
table.insert(nameList, "Zombie")
table.insert(nameList, "Skeleton")




-- Dicionários
local creatureEncounters: {[string]: number} = {}
creatureEncounters.Creeper = 1
creatureEncounters["Zombie"] = 5
creatureEncounters.Creeper += 1
creatureEncounters.Creeper += 50
print(creatureEncounters.Creeper)
