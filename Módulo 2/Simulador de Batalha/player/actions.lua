local utils = require "utils"

local actions = {}

actions.list = {}

---Cria uma lista de ações que é armazenada internamente.
function actions.build()
    -- Reset list
    actions.list = {}

    -- Atacar com espada
    local swordAttack = {
        description = "Atacar com a espada.",
        requirement = nil,
        execute = function(playerData, creatureData)
            -- 1. Definir chance de sucesso
            local successChance = creatureData.speed == 0 and 1 or playerData.speed / creatureData.speed
            local success = math.random() <= successChance

            -- 2. Calcular dano
            local rawDamage = playerData.attack - math.random() * creatureData.defense
            local damage = math.max(1, math.ceil(rawDamage))

            if success then
                -- 3. Aplicar o dano em caso de sucesso
                creatureData.health = creatureData.health - damage
                
                -- 4. Apresentar resultado como print
                print(string.format("%s atacou a criatura e deu %d pontos de dano", playerData.name, damage))
                local healthRate = math.floor((creatureData.health / creatureData.maxHealth) * 10)
                print(string.format("%s: %s", creatureData.name, utils.getProgressBar(healthRate)))

            else
                print(string.format("%s tentou atacar, mas esqueceu a espada na mochila.", playerData.name))
            end
        end
    }

    -- Usar poção de regeneração
    local regenPotion = {
        description = "Tomar uma poção de regeneração.",
        requirement = function(playerData, creatureData)
            return playerData.potions >= 1
        end,
        execute = function(playerData, creatureData)
            -- Tirar poção do inventário
            playerData.potions = playerData.potions - 1

            -- Recuperar vida
            local regenPoints = 10
            playerData.health = math.min(playerData.maxHealth, playerData.health + regenPoints)
            print(string.format("%s usou uma poção e recuperou alguns pontos de vida.", playerData.name))
        end
    }

    -- Populate list
    actions.list[#actions.list + 1] = swordAttack
    actions.list[#actions.list + 1] = regenPotion
end


---Retorna uma lista de ações válidas
---@param playerData table Definição do jogador
---@param creatureData table Definição da criatura
---@return table
function actions.getValidActions(playerData, creatureData)
    local validActions = {}
    for _, action in pairs(actions.list) do
        local requirement = action.requirement
        local isValid = requirement == nil or requirement(playerData, creatureData)
        if isValid then
            validActions[#validActions+1] = action
        end
    end
    return validActions
end


return actions