local class = require("libs.middleclass")
local ansicolorsx = require("libs.ansicolorsx")
local utils = require("utils")

local Creature = class("Creature")

-- Constructor
function Creature:initialize(name)
    self.name = name
    self.health = 0
    self.maxHealth = 0
end

---Retorna o nome da criatura.
---@return string
function Creature:getName()
    return self.name
end

---Checa se a criatura é hostil.
---@return boolean
function Creature:isHostile()
end

---Retorna os pontos de vida da criatura.
---@return integer
function Creature:getHealth()
    return self.health
end

---Retorna a vida máxima da criatura.
---@return integer
function Creature:getMaxHealth()
    return self.maxHealth
end

---Checa se a vida da criatura está cheia.
---@return boolean
function Creature:isHealthFull()
    return self.health >= self.maxHealth
end

---Checa se a criatura está viva.
---@return boolean
function Creature:isAlive()
    return self.health > 0
end

---Checa se a criatura está morta.
---@return boolean
function Creature:isDead()
    return not self:isAlive()
end

function Creature:printInfo()
    local hostile = self:isHostile()
    print(ansicolorsx(string.format(
        "%s %s",
        "%{white bright}" .. self:getName() .. "%{reset}",
        hostile and "%{red}(Hostil)" or "%{green}(Dócil)"
    )))
    local healthAttribute = math.floor((self.health / self.maxHealth) * 10 + 0.5)
    print(ansicolorsx("%{italic}Health: " .. utils.getProgressBar(healthAttribute)))
    print()
end

return Creature