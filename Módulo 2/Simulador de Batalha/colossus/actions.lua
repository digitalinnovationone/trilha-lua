local utils = require "utils"

local actions = {}

actions.list = {}

---Cria uma lista de ações que é armazenada internamente.
function actions.build()
    -- Reset list
    actions.list = {}

    -- Atacar com o corpo
    local bodyAttack = {
        description = "Atacar com o corpo.",
        requirement = nil,
        execute = function(playerData, creatureData)
            -- 1. Definir chance de sucesso
            local successChance = playerData.speed == 0 and 1 or creatureData.speed / playerData.speed
            local success = math.random() <= successChance

            -- 2. Calcular dano
            local rawDamage = creatureData.attack - math.random() * playerData.defense
            local damage = math.max(1, math.ceil(rawDamage))

            if success then
                -- 3. Aplicar o dano em caso de sucesso
                playerData.health = playerData.health - damage
                
                -- 4. Apresentar resultado como print
                print(string.format("%s atacou %s e deu %d pontos de dano", creatureData.name, playerData.name, damage))
                local healthRate = math.floor((playerData.health / playerData.maxHealth) * 10)
                print(string.format("%s: %s", playerData.name, utils.getProgressBar(healthRate)))
            else
                print(string.format("%s tentou atacar, mas errou.", creatureData.name))
            end
        end
    }

    -- Ataque sonar
    local sonarAttack = {
        description = "Ataque sonar",
        requirement = nil,
        execute = function(playerData, creatureData)
            -- Calcular dano
            local rawDamage = creatureData.attack - math.random() * playerData.defense
            local damage = math.max(1, math.ceil(rawDamage * 0.3))

            -- Aplicar o dano
            playerData.health = playerData.health - damage
            
            -- Apresentar resultado como print
            print(string.format("%s usou um sonar e deu %d pontos de dano", creatureData.name, damage))
            local healthRate = math.floor((playerData.health / playerData.maxHealth) * 10)
            print(string.format("%s: %s", playerData.name, utils.getProgressBar(healthRate)))
        end
    }

    -- Aguardar
    local waitAction = {
        description = "Aguardar",
        requirement = nil,
        execute = function(playerData, creatureData)
            -- Apresentar resultado como print
            print(string.format("%s decidiu aguardar, e não fez nada nesse turno.", creatureData.name))
        end
    }

    -- Populate list
    actions.list[#actions.list + 1] = bodyAttack
    actions.list[#actions.list + 1] = sonarAttack
    actions.list[#actions.list + 1] = waitAction
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