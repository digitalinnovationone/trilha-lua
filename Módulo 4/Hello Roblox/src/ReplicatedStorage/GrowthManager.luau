local growthManager = {}

local growthChancePerSecond = 0.03

function growthManager:run(deltaTime: number)
    local tiles = _G.gameData.tiles
    for _, tile in tiles do

        -- Ignore complete tiles
        if tile:isComplete() then
            continue
        end

        -- Calculate chance
        local chance = growthChancePerSecond * deltaTime
        if math.random() > chance then
            continue
        end

        -- Grow
        tile:setStage(tile.stage + 1)
    end
end

return growthManager
