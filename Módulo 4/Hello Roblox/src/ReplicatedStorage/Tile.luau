local class = require(game.ReplicatedStorage.middleclass)

local Tile = class("Tile")

local MAX_STAGE = 2

local stages = {
    game.ReplicatedStorage.Prefabs.Stage1,
    game.ReplicatedStorage.Prefabs.Stage2
}

function Tile:initialize(instance)
    self.stage = 0
    self.position = instance.Position
    self.model = nil
end

function Tile:isComplete()
    return self.stage >= MAX_STAGE
end

function Tile:setStage(stage)
    self.stage = stage

    -- Destroy old model
    if self.model ~= nil then
        self.model:Destroy()
        self.model = nil
    end

    -- Handle model
    if self.stage > 0 then
        local prefab = stages[self.stage]
        local model = prefab:Clone()
        model.Parent = game.Workspace
        model:TranslateBy(self.position - model:GetPrimaryPartCFrame().p)
        self.model = model
        
        -- Handle click detection
        if self.stage == MAX_STAGE then
            model.ClickDetector.MouseClick:Connect(function()
                self:setStage(0)
                _G.gameData.coins += 10
                print("Acabamos de colher uma abóbora, e agora temos " .. _G.gameData.coins .. " moedas.")
            end)
        end
    end
end

return Tile
