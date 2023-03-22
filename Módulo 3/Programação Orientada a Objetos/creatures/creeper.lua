local Monster = require("creatures.monster")

local Creeper = Monster:subclass("Creeper")

-- Constructor
function Creeper:initialize()
    Monster.initialize(self, "Creeper")
    self.health = 10
    self.maxHealth = 10
end

return Creeper