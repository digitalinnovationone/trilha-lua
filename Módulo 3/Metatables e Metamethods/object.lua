local Person = {}

function Person:new(name, role)
    local object = {}
    object.name = name;
    object.role = role;
    setmetatable(object, self)
    self.__index = self
    return object
end

function Person:getName()
    return self.name
end

function Person:getRole()
    return self.role
end

function Person:__tostring()
    return string.format("%s: %s", self.name, self.role)
end

-----------------

local rafa = Person:new("Rafa", "Game Dev")
local violet = Person:new("Violet", "Espadachin")

print(rafa)
print(violet:getName())
